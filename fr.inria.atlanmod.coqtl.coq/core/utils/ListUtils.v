(**

 Utility to manipulate lists

 **)

Require Import List Omega.
Require Import core.utils.CpdtTactics.

Definition listToListList {A : Type} (l : list A) : list (list A) :=
  map (fun e:A => e::nil) l.

Definition hasLength {A : Type} (l : list A) (n: nat): bool :=
  beq_nat (Datatypes.length l) n.

Definition optionToList {A:Type} (o: option A) : list A :=
  match o with
  | Some a => a :: nil
  | None => nil
  end.

Definition optionListToList {A:Type} (o: option (list A)) : list A :=
  match o with
  | Some a => a
  | None => nil
  end.

Definition optionList2List {A : Type} (l:list (option A)) : list A :=
  flat_map optionToList l.


Theorem optionListToList_In:
  forall (A:Type) (a: A) (l: option (list A)), (In a (optionListToList l)) -> l <> None.
Proof.
  intros. intro H'.
  destruct l.
  - discriminate H'.
  - assumption.
Qed.


Theorem optionList2List_In :
  forall (A:Type) (a: A) (l: list (option A)), (In a (optionList2List l)) -> (In (Some a) l).
Proof.
  intros.
  induction l.
  - inversion H.
  - destruct a0.
    + destruct H.
      * left. rewrite H. reflexivity.
      * right. apply IHl. assumption.
    + right. apply IHl. assumption.
Qed.

Theorem optionList2List_In_inv :
  forall (A:Type) (a: A) (l: list (option A)), (In (Some a) l) -> (In a (optionList2List l)).
Proof.
  intros.
  induction l.
  - inversion H.
  - destruct a0.
    + destruct H.
      * rewrite H. left. reflexivity.
      * right. apply IHl. assumption.
    + apply IHl. destruct H.
      * inversion H.
      * assumption.
Qed.

Definition singletons {A: Type} (l : list A) : list (list A) :=
  listToListList l.

Fixpoint mapWithIndex {A : Type} {B : Type} (f: nat -> A -> B) (n : nat) (l: list A) : list B :=
  match l with
  | nil => nil
  | a :: t => (f n a) :: (mapWithIndex f (S n) t)
  end.

Fixpoint zipWith {A : Type} {B : Type} {C : Type} (f: A -> B -> C) (la: list A) (lb: list B) : list C :=
  match la, lb with
  | ea::eas, eb::ebs => (f ea eb) :: (zipWith f eas ebs)
  | nil, _ => nil
  | _, nil => nil
  end.

Theorem in_flat_map_nil:
  forall {A B : Type} (f : A -> list B) (l : list A),
    (flat_map f l) = nil <-> (forall a: A, In a l -> f a = nil).
Proof.
  split.
  - intros Hnil a Hin.
    induction l.
    + contradiction.
    + simpl in Hnil. apply app_eq_nil in Hnil. destruct Hnil.
      inversion Hin; subst; auto.
  - intro H.
    induction l.
    + reflexivity.
    + simpl. rewrite H by (left; reflexivity). simpl.
      apply IHl. intros a0 H0. apply H. right. assumption.
Qed.

Lemma lem_in_flat_map_exists :
  forall (X Y:Type) (x:X) (y:Y) (f: X -> list Y),
    In y (f x) <-> (exists ys:list Y, f x = ys /\ In y ys).
Proof.
  intros.
  split; intro H.
  - exists (f x). split; auto.
  - destruct H as [_ [[] H']]. assumption.
Qed.

Theorem in_flat_map_exists:
  (forall (X Y:Type) (x:X) (y:Y) (f: X -> list Y) (B:Prop),
      (In y (f x) <-> B)) <->
  (forall (X Y:Type) (x:X) (y:Y) (f: X -> list Y) (B:Prop),
      (exists ys:list Y, f x = ys /\ In y ys) <-> B).
Proof.
  split; intros; specialize (H X Y x y f B); symmetry in H.
  - rewrite H. rewrite lem_in_flat_map_exists. reflexivity.
  - rewrite H. rewrite lem_in_flat_map_exists. reflexivity.
Qed.

Lemma filter_nil:
    forall (A : Type) (f : A -> bool) (x : A) (l : list A),
      (filter f l) = nil <->  (forall a: A, In a l -> f a = false).
Proof.
  split; intros.
  - induction l.
    + destruct H0.
    + simpl in H. destruct (f a0) eqn:Ha0; [discriminate H | ].
      destruct H0; subst; auto.
  - induction l.
    + reflexivity.
    + simpl. destruct (f a) eqn:Ha.
      * rewrite H in Ha by (left; reflexivity). discriminate Ha.
      * apply IHl. intros. apply H. right. assumption.
Qed.

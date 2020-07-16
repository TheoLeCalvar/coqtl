(**

 CoqTL user theorem: All_classes_match

 Def: all classes in the source model exists a rule that matches it

 Proved with engine implementation

 **)

Require Import String.

Require Import core.utils.TopUtils.
Require Import core.Syntax.
Require Import core.Semantics.
Require Import core.Certification.
Require Import core.Metamodel.
Require Import core.Model.

Require Import examples.Class2Relational.Class2Relational.
Require Import examples.Class2Relational.ClassMetamodel.
Require Import examples.Class2Relational.RelationalMetamodel.

Require Import core.utils.CpdtTactics.

Theorem All_classes_match_impl :
  forall (cm : ClassModel) (c : Class),
  exists (r : Rule ClassMetamodel RelationalMetamodel),
    matchPattern Class2Relational cm [ClassMetamodel_toEObject c] = [r].
Proof.
  intros.
  eexists _.
  reflexivity.
Qed.
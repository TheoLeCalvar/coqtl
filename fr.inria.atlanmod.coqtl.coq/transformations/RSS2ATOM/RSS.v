

(********************************************************************
	@name Coq declarations for metamodel: <RSS>
	@date 2021/10/16 14:44:13
	@description Automatically generated by Ecore2Coq transformation.
 ********************************************************************)

(* Coq libraries *)
Require Import String.
Require Import Bool.
Require Import List.      (* sequence *)
Require Import Multiset.  (* bag *)
Require Import ListSet.   (* set *)
Require Import PeanoNat.
Require Import EqNat.
Require Import Coq.Logic.Eqdep_dec.

Require Import core.EqDec.
Require Import core.utils.Utils.
Require Import core.Metamodel.
Require Import core.modeling.ModelingMetamodel.
Require Import core.Model.
Require Import core.utils.CpdtTactics.

(* Base types *)
Inductive RSS : Set :=
  BuildRSS :
  (* version *) string ->
  RSS.
  
Inductive Channel : Set :=
  BuildChannel :
  (* title *) string ->
  (* link *) string ->
  (* description *) string ->
  (* language *) string ->
  (* copyright *) string ->
  (* managingEditor *) string ->
  (* webmaster *) string ->
  (* generator *) string ->
  (* docs *) string ->
  (* ttl *) nat ->
  (* rating *) string ->
  (* skipHours *) nat ->
  (* pubDate *) string ->
  (* skipDays *) string ->
  (* lastBuildDate *) string ->
  Channel.
  
Inductive Item : Set :=
  BuildItem :
  (* title *) string ->
  (* link *) string ->
  (* description *) string ->
  (* pubDate *) string ->
  (* author *) string ->
  (* comments *) string ->
  (* guid *) string ->
  Item.
  
Inductive Image : Set :=
  BuildImage :
  (* url *) string ->
  (* title *) string ->
  (* link *) string ->
  (* description *) string ->
  (* width *) nat ->
  (* height *) nat ->
  Image.
  
Inductive TextInput : Set :=
  BuildTextInput :
  (* title *) string ->
  (* description *) string ->
  (* name *) string ->
  (* link *) string ->
  TextInput.
  
Inductive Cloud : Set :=
  BuildCloud :
  (* domain *) string ->
  (* port *) nat ->
  (* path *) string ->
  (* registerProcedure *) string ->
  (* protocol *) string ->
  Cloud.
  
Inductive Category : Set :=
  BuildCategory :
  (* domain *) string ->
  (* value *) string ->
  Category.
  
Inductive Enclosure : Set :=
  BuildEnclosure :
  (* url *) string ->
  (* lenght *) nat ->
  (* type *) string ->
  Enclosure.
  
Inductive Source : Set :=
  BuildSource :
  (* url *) string ->
  (* value *) string ->
  Source.
  

Inductive RSSChannel : Set :=
   BuildRSSChannel :
   RSS ->
   Channel ->
   RSSChannel.

Definition maybeBuildRSSChannel (rs_arg: RSS) (ch_arg: option (Channel)) : option RSSChannel :=
  match rs_arg, ch_arg with
  | rs_arg_succ, Some ch_arg_succ => Some (BuildRSSChannel rs_arg_succ ch_arg_succ)
  | _, _ => None
  end.

Inductive ChannelRss : Set :=
   BuildChannelRss :
   Channel ->
   RSS ->
   ChannelRss.

Definition maybeBuildChannelRss (ch_arg: Channel) (rs_arg: option (RSS)) : option ChannelRss :=
  match ch_arg, rs_arg with
  | ch_arg_succ, Some rs_arg_succ => Some (BuildChannelRss ch_arg_succ rs_arg_succ)
  | _, _ => None
  end.
Inductive ChannelImage : Set :=
   BuildChannelImage :
   Channel ->
   Image ->
   ChannelImage.

Definition maybeBuildChannelImage (ch_arg: Channel) (im_arg: option (Image)) : option ChannelImage :=
  match ch_arg, im_arg with
  | ch_arg_succ, Some im_arg_succ => Some (BuildChannelImage ch_arg_succ im_arg_succ)
  | _, _ => None
  end.
Inductive ChannelTextInput : Set :=
   BuildChannelTextInput :
   Channel ->
   TextInput ->
   ChannelTextInput.

Definition maybeBuildChannelTextInput (ch_arg: Channel) (te_arg: option (TextInput)) : option ChannelTextInput :=
  match ch_arg, te_arg with
  | ch_arg_succ, Some te_arg_succ => Some (BuildChannelTextInput ch_arg_succ te_arg_succ)
  | _, _ => None
  end.
Inductive ChannelCloud : Set :=
   BuildChannelCloud :
   Channel ->
   Cloud ->
   ChannelCloud.

Definition maybeBuildChannelCloud (ch_arg: Channel) (cl_arg: option (Cloud)) : option ChannelCloud :=
  match ch_arg, cl_arg with
  | ch_arg_succ, Some cl_arg_succ => Some (BuildChannelCloud ch_arg_succ cl_arg_succ)
  | _, _ => None
  end.
Inductive ChannelCategory : Set :=
   BuildChannelCategory :
   Channel ->
   Category ->
   ChannelCategory.

Definition maybeBuildChannelCategory (ch_arg: Channel) (ca_arg: option (Category)) : option ChannelCategory :=
  match ch_arg, ca_arg with
  | ch_arg_succ, Some ca_arg_succ => Some (BuildChannelCategory ch_arg_succ ca_arg_succ)
  | _, _ => None
  end.
Inductive ChannelItems : Set :=
   BuildChannelItems :
   Channel ->
   list Item ->
   ChannelItems.

Definition maybeBuildChannelItems (ch_arg: Channel) (it_arg: option (list Item)) : option ChannelItems :=
  match ch_arg, it_arg with
  | ch_arg_succ, Some it_arg_succ => Some (BuildChannelItems ch_arg_succ it_arg_succ)
  | _, _ => None
  end.

Inductive ItemSource : Set :=
   BuildItemSource :
   Item ->
   Source ->
   ItemSource.

Definition maybeBuildItemSource (it_arg: Item) (so_arg: option (Source)) : option ItemSource :=
  match it_arg, so_arg with
  | it_arg_succ, Some so_arg_succ => Some (BuildItemSource it_arg_succ so_arg_succ)
  | _, _ => None
  end.
Inductive ItemEnclosure : Set :=
   BuildItemEnclosure :
   Item ->
   Enclosure ->
   ItemEnclosure.

Definition maybeBuildItemEnclosure (it_arg: Item) (en_arg: option (Enclosure)) : option ItemEnclosure :=
  match it_arg, en_arg with
  | it_arg_succ, Some en_arg_succ => Some (BuildItemEnclosure it_arg_succ en_arg_succ)
  | _, _ => None
  end.
Inductive ItemCategory : Set :=
   BuildItemCategory :
   Item ->
   Category ->
   ItemCategory.

Definition maybeBuildItemCategory (it_arg: Item) (ca_arg: option (Category)) : option ItemCategory :=
  match it_arg, ca_arg with
  | it_arg_succ, Some ca_arg_succ => Some (BuildItemCategory it_arg_succ ca_arg_succ)
  | _, _ => None
  end.
Inductive ItemChannel : Set :=
   BuildItemChannel :
   Item ->
   Channel ->
   ItemChannel.

Definition maybeBuildItemChannel (it_arg: Item) (ch_arg: option (Channel)) : option ItemChannel :=
  match it_arg, ch_arg with
  | it_arg_succ, Some ch_arg_succ => Some (BuildItemChannel it_arg_succ ch_arg_succ)
  | _, _ => None
  end.

Inductive ImageChannel : Set :=
   BuildImageChannel :
   Image ->
   Channel ->
   ImageChannel.

Definition maybeBuildImageChannel (im_arg: Image) (ch_arg: option (Channel)) : option ImageChannel :=
  match im_arg, ch_arg with
  | im_arg_succ, Some ch_arg_succ => Some (BuildImageChannel im_arg_succ ch_arg_succ)
  | _, _ => None
  end.

Inductive TextInputChannel : Set :=
   BuildTextInputChannel :
   TextInput ->
   Channel ->
   TextInputChannel.

Definition maybeBuildTextInputChannel (te_arg: TextInput) (ch_arg: option (Channel)) : option TextInputChannel :=
  match te_arg, ch_arg with
  | te_arg_succ, Some ch_arg_succ => Some (BuildTextInputChannel te_arg_succ ch_arg_succ)
  | _, _ => None
  end.

Inductive CloudChannel : Set :=
   BuildCloudChannel :
   Cloud ->
   Channel ->
   CloudChannel.

Definition maybeBuildCloudChannel (cl_arg: Cloud) (ch_arg: option (Channel)) : option CloudChannel :=
  match cl_arg, ch_arg with
  | cl_arg_succ, Some ch_arg_succ => Some (BuildCloudChannel cl_arg_succ ch_arg_succ)
  | _, _ => None
  end.

Inductive CategoryChannel : Set :=
   BuildCategoryChannel :
   Category ->
   Channel ->
   CategoryChannel.

Definition maybeBuildCategoryChannel (ca_arg: Category) (ch_arg: option (Channel)) : option CategoryChannel :=
  match ca_arg, ch_arg with
  | ca_arg_succ, Some ch_arg_succ => Some (BuildCategoryChannel ca_arg_succ ch_arg_succ)
  | _, _ => None
  end.
Inductive CategoryItems : Set :=
   BuildCategoryItems :
   Category ->
   Item ->
   CategoryItems.

Definition maybeBuildCategoryItems (ca_arg: Category) (it_arg: option (Item)) : option CategoryItems :=
  match ca_arg, it_arg with
  | ca_arg_succ, Some it_arg_succ => Some (BuildCategoryItems ca_arg_succ it_arg_succ)
  | _, _ => None
  end.





(* Accessors *)
Definition RSS_getVersion (r : RSS) : string :=
  match r with BuildRSS  version  => version end.
 
Definition Channel_getTitle (c : Channel) : string :=
  match c with BuildChannel  title link description language copyright managingEditor webmaster generator docs ttl rating skipHours pubDate skipDays lastBuildDate  => title end.
Definition Channel_getLink (c : Channel) : string :=
  match c with BuildChannel  title link description language copyright managingEditor webmaster generator docs ttl rating skipHours pubDate skipDays lastBuildDate  => link end.
Definition Channel_getDescription (c : Channel) : string :=
  match c with BuildChannel  title link description language copyright managingEditor webmaster generator docs ttl rating skipHours pubDate skipDays lastBuildDate  => description end.
Definition Channel_getLanguage (c : Channel) : string :=
  match c with BuildChannel  title link description language copyright managingEditor webmaster generator docs ttl rating skipHours pubDate skipDays lastBuildDate  => language end.
Definition Channel_getCopyright (c : Channel) : string :=
  match c with BuildChannel  title link description language copyright managingEditor webmaster generator docs ttl rating skipHours pubDate skipDays lastBuildDate  => copyright end.
Definition Channel_getManagingEditor (c : Channel) : string :=
  match c with BuildChannel  title link description language copyright managingEditor webmaster generator docs ttl rating skipHours pubDate skipDays lastBuildDate  => managingEditor end.
Definition Channel_getWebmaster (c : Channel) : string :=
  match c with BuildChannel  title link description language copyright managingEditor webmaster generator docs ttl rating skipHours pubDate skipDays lastBuildDate  => webmaster end.
Definition Channel_getGenerator (c : Channel) : string :=
  match c with BuildChannel  title link description language copyright managingEditor webmaster generator docs ttl rating skipHours pubDate skipDays lastBuildDate  => generator end.
Definition Channel_getDocs (c : Channel) : string :=
  match c with BuildChannel  title link description language copyright managingEditor webmaster generator docs ttl rating skipHours pubDate skipDays lastBuildDate  => docs end.
Definition Channel_getTtl (c : Channel) : nat :=
  match c with BuildChannel  title link description language copyright managingEditor webmaster generator docs ttl rating skipHours pubDate skipDays lastBuildDate  => ttl end.
Definition Channel_getRating (c : Channel) : string :=
  match c with BuildChannel  title link description language copyright managingEditor webmaster generator docs ttl rating skipHours pubDate skipDays lastBuildDate  => rating end.
Definition Channel_getSkipHours (c : Channel) : nat :=
  match c with BuildChannel  title link description language copyright managingEditor webmaster generator docs ttl rating skipHours pubDate skipDays lastBuildDate  => skipHours end.
Definition Channel_getPubDate (c : Channel) : string :=
  match c with BuildChannel  title link description language copyright managingEditor webmaster generator docs ttl rating skipHours pubDate skipDays lastBuildDate  => pubDate end.
Definition Channel_getSkipDays (c : Channel) : string :=
  match c with BuildChannel  title link description language copyright managingEditor webmaster generator docs ttl rating skipHours pubDate skipDays lastBuildDate  => skipDays end.
Definition Channel_getLastBuildDate (c : Channel) : string :=
  match c with BuildChannel  title link description language copyright managingEditor webmaster generator docs ttl rating skipHours pubDate skipDays lastBuildDate  => lastBuildDate end.
 
Definition Item_getTitle (i : Item) : string :=
  match i with BuildItem  title link description pubDate author comments guid  => title end.
Definition Item_getLink (i : Item) : string :=
  match i with BuildItem  title link description pubDate author comments guid  => link end.
Definition Item_getDescription (i : Item) : string :=
  match i with BuildItem  title link description pubDate author comments guid  => description end.
Definition Item_getPubDate (i : Item) : string :=
  match i with BuildItem  title link description pubDate author comments guid  => pubDate end.
Definition Item_getAuthor (i : Item) : string :=
  match i with BuildItem  title link description pubDate author comments guid  => author end.
Definition Item_getComments (i : Item) : string :=
  match i with BuildItem  title link description pubDate author comments guid  => comments end.
Definition Item_getGuid (i : Item) : string :=
  match i with BuildItem  title link description pubDate author comments guid  => guid end.
 
Definition Image_getUrl (i : Image) : string :=
  match i with BuildImage  url title link description width height  => url end.
Definition Image_getTitle (i : Image) : string :=
  match i with BuildImage  url title link description width height  => title end.
Definition Image_getLink (i : Image) : string :=
  match i with BuildImage  url title link description width height  => link end.
Definition Image_getDescription (i : Image) : string :=
  match i with BuildImage  url title link description width height  => description end.
Definition Image_getWidth (i : Image) : nat :=
  match i with BuildImage  url title link description width height  => width end.
Definition Image_getHeight (i : Image) : nat :=
  match i with BuildImage  url title link description width height  => height end.
 
Definition TextInput_getTitle (t : TextInput) : string :=
  match t with BuildTextInput  title description name link  => title end.
Definition TextInput_getDescription (t : TextInput) : string :=
  match t with BuildTextInput  title description name link  => description end.
Definition TextInput_getName (t : TextInput) : string :=
  match t with BuildTextInput  title description name link  => name end.
Definition TextInput_getLink (t : TextInput) : string :=
  match t with BuildTextInput  title description name link  => link end.
 
Definition Cloud_getDomain (c : Cloud) : string :=
  match c with BuildCloud  domain port path registerProcedure protocol  => domain end.
Definition Cloud_getPort (c : Cloud) : nat :=
  match c with BuildCloud  domain port path registerProcedure protocol  => port end.
Definition Cloud_getPath (c : Cloud) : string :=
  match c with BuildCloud  domain port path registerProcedure protocol  => path end.
Definition Cloud_getRegisterProcedure (c : Cloud) : string :=
  match c with BuildCloud  domain port path registerProcedure protocol  => registerProcedure end.
Definition Cloud_getProtocol (c : Cloud) : string :=
  match c with BuildCloud  domain port path registerProcedure protocol  => protocol end.
 
Definition Category_getDomain (c : Category) : string :=
  match c with BuildCategory  domain value  => domain end.
Definition Category_getValue (c : Category) : string :=
  match c with BuildCategory  domain value  => value end.
 
Definition Enclosure_getUrl (e : Enclosure) : string :=
  match e with BuildEnclosure  url lenght type  => url end.
Definition Enclosure_getLenght (e : Enclosure) : nat :=
  match e with BuildEnclosure  url lenght type  => lenght end.
Definition Enclosure_getType (e : Enclosure) : string :=
  match e with BuildEnclosure  url lenght type  => type end.
 
Definition Source_getUrl (s : Source) : string :=
  match s with BuildSource  url value  => url end.
Definition Source_getValue (s : Source) : string :=
  match s with BuildSource  url value  => value end.
 

Definition beq_RSS (rs_arg1 : RSS) (rs_arg2 : RSS) : bool :=
( beq_string (RSS_getVersion rs_arg1) (RSS_getVersion rs_arg2) )
.

Definition beq_Channel (ch_arg1 : Channel) (ch_arg2 : Channel) : bool :=
( beq_string (Channel_getTitle ch_arg1) (Channel_getTitle ch_arg2) ) && 
( beq_string (Channel_getLink ch_arg1) (Channel_getLink ch_arg2) ) && 
( beq_string (Channel_getDescription ch_arg1) (Channel_getDescription ch_arg2) ) && 
( beq_string (Channel_getLanguage ch_arg1) (Channel_getLanguage ch_arg2) ) && 
( beq_string (Channel_getCopyright ch_arg1) (Channel_getCopyright ch_arg2) ) && 
( beq_string (Channel_getManagingEditor ch_arg1) (Channel_getManagingEditor ch_arg2) ) && 
( beq_string (Channel_getWebmaster ch_arg1) (Channel_getWebmaster ch_arg2) ) && 
( beq_string (Channel_getGenerator ch_arg1) (Channel_getGenerator ch_arg2) ) && 
( beq_string (Channel_getDocs ch_arg1) (Channel_getDocs ch_arg2) ) && 
( beq_nat (Channel_getTtl ch_arg1) (Channel_getTtl ch_arg2) ) && 
( beq_string (Channel_getRating ch_arg1) (Channel_getRating ch_arg2) ) && 
( beq_nat (Channel_getSkipHours ch_arg1) (Channel_getSkipHours ch_arg2) ) && 
( beq_string (Channel_getPubDate ch_arg1) (Channel_getPubDate ch_arg2) ) && 
( beq_string (Channel_getSkipDays ch_arg1) (Channel_getSkipDays ch_arg2) ) && 
( beq_string (Channel_getLastBuildDate ch_arg1) (Channel_getLastBuildDate ch_arg2) )
.

Definition beq_Item (it_arg1 : Item) (it_arg2 : Item) : bool :=
( beq_string (Item_getTitle it_arg1) (Item_getTitle it_arg2) ) && 
( beq_string (Item_getLink it_arg1) (Item_getLink it_arg2) ) && 
( beq_string (Item_getDescription it_arg1) (Item_getDescription it_arg2) ) && 
( beq_string (Item_getPubDate it_arg1) (Item_getPubDate it_arg2) ) && 
( beq_string (Item_getAuthor it_arg1) (Item_getAuthor it_arg2) ) && 
( beq_string (Item_getComments it_arg1) (Item_getComments it_arg2) ) && 
( beq_string (Item_getGuid it_arg1) (Item_getGuid it_arg2) )
.

Definition beq_Image (im_arg1 : Image) (im_arg2 : Image) : bool :=
( beq_string (Image_getUrl im_arg1) (Image_getUrl im_arg2) ) && 
( beq_string (Image_getTitle im_arg1) (Image_getTitle im_arg2) ) && 
( beq_string (Image_getLink im_arg1) (Image_getLink im_arg2) ) && 
( beq_string (Image_getDescription im_arg1) (Image_getDescription im_arg2) ) && 
( beq_nat (Image_getWidth im_arg1) (Image_getWidth im_arg2) ) && 
( beq_nat (Image_getHeight im_arg1) (Image_getHeight im_arg2) )
.

Definition beq_TextInput (te_arg1 : TextInput) (te_arg2 : TextInput) : bool :=
( beq_string (TextInput_getTitle te_arg1) (TextInput_getTitle te_arg2) ) && 
( beq_string (TextInput_getDescription te_arg1) (TextInput_getDescription te_arg2) ) && 
( beq_string (TextInput_getName te_arg1) (TextInput_getName te_arg2) ) && 
( beq_string (TextInput_getLink te_arg1) (TextInput_getLink te_arg2) )
.

Definition beq_Cloud (cl_arg1 : Cloud) (cl_arg2 : Cloud) : bool :=
( beq_string (Cloud_getDomain cl_arg1) (Cloud_getDomain cl_arg2) ) && 
( beq_nat (Cloud_getPort cl_arg1) (Cloud_getPort cl_arg2) ) && 
( beq_string (Cloud_getPath cl_arg1) (Cloud_getPath cl_arg2) ) && 
( beq_string (Cloud_getRegisterProcedure cl_arg1) (Cloud_getRegisterProcedure cl_arg2) ) && 
( beq_string (Cloud_getProtocol cl_arg1) (Cloud_getProtocol cl_arg2) )
.

Definition beq_Category (ca_arg1 : Category) (ca_arg2 : Category) : bool :=
( beq_string (Category_getDomain ca_arg1) (Category_getDomain ca_arg2) ) && 
( beq_string (Category_getValue ca_arg1) (Category_getValue ca_arg2) )
.

Definition beq_Enclosure (en_arg1 : Enclosure) (en_arg2 : Enclosure) : bool :=
( beq_string (Enclosure_getUrl en_arg1) (Enclosure_getUrl en_arg2) ) && 
( beq_nat (Enclosure_getLenght en_arg1) (Enclosure_getLenght en_arg2) ) && 
( beq_string (Enclosure_getType en_arg1) (Enclosure_getType en_arg2) )
.

Definition beq_Source (so_arg1 : Source) (so_arg2 : Source) : bool :=
( beq_string (Source_getUrl so_arg1) (Source_getUrl so_arg2) ) && 
( beq_string (Source_getValue so_arg1) (Source_getValue so_arg2) )
.


(* Meta-types *)	
Inductive RSSMetamodel_Class : Set :=
  | RSSClass
  | ChannelClass
  | ItemClass
  | ImageClass
  | TextInputClass
  | CloudClass
  | CategoryClass
  | EnclosureClass
  | SourceClass
.

Definition RSSMetamodel_getTypeByClass (rscl_arg : RSSMetamodel_Class) : Set :=
  match rscl_arg with
    | RSSClass => RSS
    | ChannelClass => Channel
    | ItemClass => Item
    | ImageClass => Image
    | TextInputClass => TextInput
    | CloudClass => Cloud
    | CategoryClass => Category
    | EnclosureClass => Enclosure
    | SourceClass => Source
  end.	

Inductive RSSMetamodel_Reference : Set :=
| RSSChannelReference
| ChannelRssReference
| ChannelImageReference
| ChannelTextInputReference
| ChannelCloudReference
| ChannelCategoryReference
| ChannelItemsReference
| ItemSourceReference
| ItemEnclosureReference
| ItemCategoryReference
| ItemChannelReference
| ImageChannelReference
| TextInputChannelReference
| CloudChannelReference
| CategoryChannelReference
| CategoryItemsReference
.

Definition RSSMetamodel_getTypeByReference (rsre_arg : RSSMetamodel_Reference) : Set :=
  match rsre_arg with
| RSSChannelReference => RSSChannel
| ChannelRssReference => ChannelRss
| ChannelImageReference => ChannelImage
| ChannelTextInputReference => ChannelTextInput
| ChannelCloudReference => ChannelCloud
| ChannelCategoryReference => ChannelCategory
| ChannelItemsReference => ChannelItems
| ItemSourceReference => ItemSource
| ItemEnclosureReference => ItemEnclosure
| ItemCategoryReference => ItemCategory
| ItemChannelReference => ItemChannel
| ImageChannelReference => ImageChannel
| TextInputChannelReference => TextInputChannel
| CloudChannelReference => CloudChannel
| CategoryChannelReference => CategoryChannel
| CategoryItemsReference => CategoryItems
  end.

Definition RSSMetamodel_getERoleTypesByEReference (rsre_arg : RSSMetamodel_Reference) : Set :=
  match rsre_arg with
| RSSChannelReference => (RSS * Channel)
| ChannelRssReference => (Channel * RSS)
| ChannelImageReference => (Channel * Image)
| ChannelTextInputReference => (Channel * TextInput)
| ChannelCloudReference => (Channel * Cloud)
| ChannelCategoryReference => (Channel * Category)
| ChannelItemsReference => (Channel * list Item)
| ItemSourceReference => (Item * Source)
| ItemEnclosureReference => (Item * Enclosure)
| ItemCategoryReference => (Item * Category)
| ItemChannelReference => (Item * Channel)
| ImageChannelReference => (Image * Channel)
| TextInputChannelReference => (TextInput * Channel)
| CloudChannelReference => (Cloud * Channel)
| CategoryChannelReference => (Category * Channel)
| CategoryItemsReference => (Category * Item)
  end.

(* Generic types *)			
Inductive RSSMetamodel_Object : Set :=
 | Build_RSSMetamodel_Object : 
    forall (rscl_arg: RSSMetamodel_Class), (RSSMetamodel_getTypeByClass rscl_arg) -> RSSMetamodel_Object.

Definition beq_RSSMetamodel_Object (c1 : RSSMetamodel_Object) (c2 : RSSMetamodel_Object) : bool :=
  match c1, c2 with
  | Build_RSSMetamodel_Object RSSClass o1, Build_RSSMetamodel_Object RSSClass o2 => beq_RSS o1 o2
  | Build_RSSMetamodel_Object ChannelClass o1, Build_RSSMetamodel_Object ChannelClass o2 => beq_Channel o1 o2
  | Build_RSSMetamodel_Object ItemClass o1, Build_RSSMetamodel_Object ItemClass o2 => beq_Item o1 o2
  | Build_RSSMetamodel_Object ImageClass o1, Build_RSSMetamodel_Object ImageClass o2 => beq_Image o1 o2
  | Build_RSSMetamodel_Object TextInputClass o1, Build_RSSMetamodel_Object TextInputClass o2 => beq_TextInput o1 o2
  | Build_RSSMetamodel_Object CloudClass o1, Build_RSSMetamodel_Object CloudClass o2 => beq_Cloud o1 o2
  | Build_RSSMetamodel_Object CategoryClass o1, Build_RSSMetamodel_Object CategoryClass o2 => beq_Category o1 o2
  | Build_RSSMetamodel_Object EnclosureClass o1, Build_RSSMetamodel_Object EnclosureClass o2 => beq_Enclosure o1 o2
  | Build_RSSMetamodel_Object SourceClass o1, Build_RSSMetamodel_Object SourceClass o2 => beq_Source o1 o2
  | _, _ => false
  end.

Inductive RSSMetamodel_Link : Set :=
 | Build_RSSMetamodel_Link : 
    forall (rsre_arg:RSSMetamodel_Reference), (RSSMetamodel_getTypeByReference rsre_arg) -> RSSMetamodel_Link.

(* TODO *)
Definition beq_RSSMetamodel_Link (l1 : RSSMetamodel_Link) (l2 : RSSMetamodel_Link) : bool := true.

(* Reflective functions *)
Lemma RSSMetamodel_eqEClass_dec : 
 forall (rscl_arg1:RSSMetamodel_Class) (rscl_arg2:RSSMetamodel_Class), { rscl_arg1 = rscl_arg2 } + { rscl_arg1 <> rscl_arg2 }.
Proof. repeat decide equality. Defined.

Lemma RSSMetamodel_eqEReference_dec : 
 forall (rsre_arg1:RSSMetamodel_Reference) (rsre_arg2:RSSMetamodel_Reference), { rsre_arg1 = rsre_arg2 } + { rsre_arg1 <> rsre_arg2 }.
Proof. repeat decide equality. Defined.

Definition RSSMetamodel_getEClass (rsob_arg : RSSMetamodel_Object) : RSSMetamodel_Class :=
   match rsob_arg with
  | (Build_RSSMetamodel_Object rsob_arg _) => rsob_arg
   end.

Definition RSSMetamodel_getEReference (rsli_arg : RSSMetamodel_Link) : RSSMetamodel_Reference :=
   match rsli_arg with
  | (Build_RSSMetamodel_Link rsli_arg _) => rsli_arg
   end.

Definition RSSMetamodel_instanceOfEClass (rscl_arg: RSSMetamodel_Class) (rsob_arg : RSSMetamodel_Object): bool :=
  if RSSMetamodel_eqEClass_dec (RSSMetamodel_getEClass rsob_arg) rscl_arg then true else false.

Definition RSSMetamodel_instanceOfEReference (rsre_arg: RSSMetamodel_Reference) (rsli_arg : RSSMetamodel_Link): bool :=
  if RSSMetamodel_eqEReference_dec (RSSMetamodel_getEReference rsli_arg) rsre_arg then true else false.


Definition RSSMetamodel_toClass (rscl_arg : RSSMetamodel_Class) (rsob_arg : RSSMetamodel_Object) : option (RSSMetamodel_getTypeByClass rscl_arg).
Proof.
  destruct rsob_arg as [arg1 arg2].
  destruct (RSSMetamodel_eqEClass_dec arg1 rscl_arg) as [e|] eqn:dec_case.
  - rewrite e in arg2.
    exact (Some arg2).
  - exact None.
Defined.

Definition RSSMetamodel_toReference (rsre_arg : RSSMetamodel_Reference) (rsli_arg : RSSMetamodel_Link) : option (RSSMetamodel_getTypeByReference rsre_arg).
Proof.
  destruct rsli_arg as [arg1 arg2].
  destruct (RSSMetamodel_eqEReference_dec arg1 rsre_arg) as [e|] eqn:dec_case.
  - rewrite e in arg2.
  	exact (Some arg2).
  - exact None.
Defined.

(* Generic functions *)
Definition RSSModel := Model RSSMetamodel_Object RSSMetamodel_Link.

Definition RSSMetamodel_toObject (rscl_arg: RSSMetamodel_Class) (t: RSSMetamodel_getTypeByClass rscl_arg) : RSSMetamodel_Object :=
  (Build_RSSMetamodel_Object rscl_arg t).

Definition RSSMetamodel_toLink (rsre_arg: RSSMetamodel_Reference) (t: RSSMetamodel_getTypeByReference rsre_arg) : RSSMetamodel_Link :=
  (Build_RSSMetamodel_Link rsre_arg t).




Fixpoint RSS_getChannelOnLinks (rs_arg : RSS) (l : list RSSMetamodel_Link) : option (Channel) :=
match l with
| (Build_RSSMetamodel_Link RSSChannelReference (BuildRSSChannel RSS_ctr channel_ctr)) :: l' => 
	  if beq_RSS RSS_ctr rs_arg then Some channel_ctr else RSS_getChannelOnLinks rs_arg l'
| _ :: l' => RSS_getChannelOnLinks rs_arg l'
| nil => None
end.

Definition RSS_getChannel (rs_arg : RSS) (m : RSSModel) : option (Channel) :=
  RSS_getChannelOnLinks rs_arg (@allModelLinks _ _ m).
  
Definition RSS_getChannelObject (rs_arg : RSS) (m : RSSModel) : option (RSSMetamodel_Object) :=
  match RSS_getChannel rs_arg m with
  | Some ch_arg => Some (RSSMetamodel_toObject ChannelClass ch_arg) 
  | _ => None
  end.

Fixpoint Channel_getRssOnLinks (ch_arg : Channel) (l : list RSSMetamodel_Link) : option (RSS) :=
match l with
| (Build_RSSMetamodel_Link ChannelRssReference (BuildChannelRss Channel_ctr rss_ctr)) :: l' => 
	  if beq_Channel Channel_ctr ch_arg then Some rss_ctr else Channel_getRssOnLinks ch_arg l'
| _ :: l' => Channel_getRssOnLinks ch_arg l'
| nil => None
end.

Definition Channel_getRss (ch_arg : Channel) (m : RSSModel) : option (RSS) :=
  Channel_getRssOnLinks ch_arg (@allModelLinks _ _ m).
  
Definition Channel_getRssObject (ch_arg : Channel) (m : RSSModel) : option (RSSMetamodel_Object) :=
  match Channel_getRss ch_arg m with
  | Some rs_arg => Some (RSSMetamodel_toObject RSSClass rs_arg) 
  | _ => None
  end.
Fixpoint Channel_getImageOnLinks (ch_arg : Channel) (l : list RSSMetamodel_Link) : option (Image) :=
match l with
| (Build_RSSMetamodel_Link ChannelImageReference (BuildChannelImage Channel_ctr image_ctr)) :: l' => 
	  if beq_Channel Channel_ctr ch_arg then Some image_ctr else Channel_getImageOnLinks ch_arg l'
| _ :: l' => Channel_getImageOnLinks ch_arg l'
| nil => None
end.

Definition Channel_getImage (ch_arg : Channel) (m : RSSModel) : option (Image) :=
  Channel_getImageOnLinks ch_arg (@allModelLinks _ _ m).
  
Definition Channel_getImageObject (ch_arg : Channel) (m : RSSModel) : option (RSSMetamodel_Object) :=
  match Channel_getImage ch_arg m with
  | Some im_arg => Some (RSSMetamodel_toObject ImageClass im_arg) 
  | _ => None
  end.
Fixpoint Channel_getTextInputOnLinks (ch_arg : Channel) (l : list RSSMetamodel_Link) : option (TextInput) :=
match l with
| (Build_RSSMetamodel_Link ChannelTextInputReference (BuildChannelTextInput Channel_ctr textInput_ctr)) :: l' => 
	  if beq_Channel Channel_ctr ch_arg then Some textInput_ctr else Channel_getTextInputOnLinks ch_arg l'
| _ :: l' => Channel_getTextInputOnLinks ch_arg l'
| nil => None
end.

Definition Channel_getTextInput (ch_arg : Channel) (m : RSSModel) : option (TextInput) :=
  Channel_getTextInputOnLinks ch_arg (@allModelLinks _ _ m).
  
Definition Channel_getTextInputObject (ch_arg : Channel) (m : RSSModel) : option (RSSMetamodel_Object) :=
  match Channel_getTextInput ch_arg m with
  | Some te_arg => Some (RSSMetamodel_toObject TextInputClass te_arg) 
  | _ => None
  end.
Fixpoint Channel_getCloudOnLinks (ch_arg : Channel) (l : list RSSMetamodel_Link) : option (Cloud) :=
match l with
| (Build_RSSMetamodel_Link ChannelCloudReference (BuildChannelCloud Channel_ctr cloud_ctr)) :: l' => 
	  if beq_Channel Channel_ctr ch_arg then Some cloud_ctr else Channel_getCloudOnLinks ch_arg l'
| _ :: l' => Channel_getCloudOnLinks ch_arg l'
| nil => None
end.

Definition Channel_getCloud (ch_arg : Channel) (m : RSSModel) : option (Cloud) :=
  Channel_getCloudOnLinks ch_arg (@allModelLinks _ _ m).
  
Definition Channel_getCloudObject (ch_arg : Channel) (m : RSSModel) : option (RSSMetamodel_Object) :=
  match Channel_getCloud ch_arg m with
  | Some cl_arg => Some (RSSMetamodel_toObject CloudClass cl_arg) 
  | _ => None
  end.
Fixpoint Channel_getCategoryOnLinks (ch_arg : Channel) (l : list RSSMetamodel_Link) : option (Category) :=
match l with
| (Build_RSSMetamodel_Link ChannelCategoryReference (BuildChannelCategory Channel_ctr category_ctr)) :: l' => 
	  if beq_Channel Channel_ctr ch_arg then Some category_ctr else Channel_getCategoryOnLinks ch_arg l'
| _ :: l' => Channel_getCategoryOnLinks ch_arg l'
| nil => None
end.

Definition Channel_getCategory (ch_arg : Channel) (m : RSSModel) : option (Category) :=
  Channel_getCategoryOnLinks ch_arg (@allModelLinks _ _ m).
  
Definition Channel_getCategoryObject (ch_arg : Channel) (m : RSSModel) : option (RSSMetamodel_Object) :=
  match Channel_getCategory ch_arg m with
  | Some ca_arg => Some (RSSMetamodel_toObject CategoryClass ca_arg) 
  | _ => None
  end.
Fixpoint Channel_getItemsOnLinks (ch_arg : Channel) (l : list RSSMetamodel_Link) : option (list Item) :=
match l with
| (Build_RSSMetamodel_Link ChannelItemsReference (BuildChannelItems Channel_ctr items_ctr)) :: l' => 
	  if beq_Channel Channel_ctr ch_arg then Some items_ctr else Channel_getItemsOnLinks ch_arg l'
| _ :: l' => Channel_getItemsOnLinks ch_arg l'
| nil => None
end.

Definition Channel_getItems (ch_arg : Channel) (m : RSSModel) : option (list Item) :=
  Channel_getItemsOnLinks ch_arg (@allModelLinks _ _ m).
  
Definition Channel_getItemsObjects (ch_arg : Channel) (m : RSSModel) : option (list RSSMetamodel_Object) :=
  match Channel_getItems ch_arg m with
  | Some l => Some (map (RSSMetamodel_toObject ItemClass) l)
  | _ => None
  end.

Fixpoint Item_getSourceOnLinks (it_arg : Item) (l : list RSSMetamodel_Link) : option (Source) :=
match l with
| (Build_RSSMetamodel_Link ItemSourceReference (BuildItemSource Item_ctr source_ctr)) :: l' => 
	  if beq_Item Item_ctr it_arg then Some source_ctr else Item_getSourceOnLinks it_arg l'
| _ :: l' => Item_getSourceOnLinks it_arg l'
| nil => None
end.

Definition Item_getSource (it_arg : Item) (m : RSSModel) : option (Source) :=
  Item_getSourceOnLinks it_arg (@allModelLinks _ _ m).
  
Definition Item_getSourceObject (it_arg : Item) (m : RSSModel) : option (RSSMetamodel_Object) :=
  match Item_getSource it_arg m with
  | Some so_arg => Some (RSSMetamodel_toObject SourceClass so_arg) 
  | _ => None
  end.
Fixpoint Item_getEnclosureOnLinks (it_arg : Item) (l : list RSSMetamodel_Link) : option (Enclosure) :=
match l with
| (Build_RSSMetamodel_Link ItemEnclosureReference (BuildItemEnclosure Item_ctr enclosure_ctr)) :: l' => 
	  if beq_Item Item_ctr it_arg then Some enclosure_ctr else Item_getEnclosureOnLinks it_arg l'
| _ :: l' => Item_getEnclosureOnLinks it_arg l'
| nil => None
end.

Definition Item_getEnclosure (it_arg : Item) (m : RSSModel) : option (Enclosure) :=
  Item_getEnclosureOnLinks it_arg (@allModelLinks _ _ m).
  
Definition Item_getEnclosureObject (it_arg : Item) (m : RSSModel) : option (RSSMetamodel_Object) :=
  match Item_getEnclosure it_arg m with
  | Some en_arg => Some (RSSMetamodel_toObject EnclosureClass en_arg) 
  | _ => None
  end.
Fixpoint Item_getCategoryOnLinks (it_arg : Item) (l : list RSSMetamodel_Link) : option (Category) :=
match l with
| (Build_RSSMetamodel_Link ItemCategoryReference (BuildItemCategory Item_ctr category_ctr)) :: l' => 
	  if beq_Item Item_ctr it_arg then Some category_ctr else Item_getCategoryOnLinks it_arg l'
| _ :: l' => Item_getCategoryOnLinks it_arg l'
| nil => None
end.

Definition Item_getCategory (it_arg : Item) (m : RSSModel) : option (Category) :=
  Item_getCategoryOnLinks it_arg (@allModelLinks _ _ m).
  
Definition Item_getCategoryObject (it_arg : Item) (m : RSSModel) : option (RSSMetamodel_Object) :=
  match Item_getCategory it_arg m with
  | Some ca_arg => Some (RSSMetamodel_toObject CategoryClass ca_arg) 
  | _ => None
  end.
Fixpoint Item_getChannelOnLinks (it_arg : Item) (l : list RSSMetamodel_Link) : option (Channel) :=
match l with
| (Build_RSSMetamodel_Link ItemChannelReference (BuildItemChannel Item_ctr channel_ctr)) :: l' => 
	  if beq_Item Item_ctr it_arg then Some channel_ctr else Item_getChannelOnLinks it_arg l'
| _ :: l' => Item_getChannelOnLinks it_arg l'
| nil => None
end.

Definition Item_getChannel (it_arg : Item) (m : RSSModel) : option (Channel) :=
  Item_getChannelOnLinks it_arg (@allModelLinks _ _ m).
  
Definition Item_getChannelObject (it_arg : Item) (m : RSSModel) : option (RSSMetamodel_Object) :=
  match Item_getChannel it_arg m with
  | Some ch_arg => Some (RSSMetamodel_toObject ChannelClass ch_arg) 
  | _ => None
  end.

Fixpoint Image_getChannelOnLinks (im_arg : Image) (l : list RSSMetamodel_Link) : option (Channel) :=
match l with
| (Build_RSSMetamodel_Link ImageChannelReference (BuildImageChannel Image_ctr channel_ctr)) :: l' => 
	  if beq_Image Image_ctr im_arg then Some channel_ctr else Image_getChannelOnLinks im_arg l'
| _ :: l' => Image_getChannelOnLinks im_arg l'
| nil => None
end.

Definition Image_getChannel (im_arg : Image) (m : RSSModel) : option (Channel) :=
  Image_getChannelOnLinks im_arg (@allModelLinks _ _ m).
  
Definition Image_getChannelObject (im_arg : Image) (m : RSSModel) : option (RSSMetamodel_Object) :=
  match Image_getChannel im_arg m with
  | Some ch_arg => Some (RSSMetamodel_toObject ChannelClass ch_arg) 
  | _ => None
  end.

Fixpoint TextInput_getChannelOnLinks (te_arg : TextInput) (l : list RSSMetamodel_Link) : option (Channel) :=
match l with
| (Build_RSSMetamodel_Link TextInputChannelReference (BuildTextInputChannel TextInput_ctr channel_ctr)) :: l' => 
	  if beq_TextInput TextInput_ctr te_arg then Some channel_ctr else TextInput_getChannelOnLinks te_arg l'
| _ :: l' => TextInput_getChannelOnLinks te_arg l'
| nil => None
end.

Definition TextInput_getChannel (te_arg : TextInput) (m : RSSModel) : option (Channel) :=
  TextInput_getChannelOnLinks te_arg (@allModelLinks _ _ m).
  
Definition TextInput_getChannelObject (te_arg : TextInput) (m : RSSModel) : option (RSSMetamodel_Object) :=
  match TextInput_getChannel te_arg m with
  | Some ch_arg => Some (RSSMetamodel_toObject ChannelClass ch_arg) 
  | _ => None
  end.

Fixpoint Cloud_getChannelOnLinks (cl_arg : Cloud) (l : list RSSMetamodel_Link) : option (Channel) :=
match l with
| (Build_RSSMetamodel_Link CloudChannelReference (BuildCloudChannel Cloud_ctr channel_ctr)) :: l' => 
	  if beq_Cloud Cloud_ctr cl_arg then Some channel_ctr else Cloud_getChannelOnLinks cl_arg l'
| _ :: l' => Cloud_getChannelOnLinks cl_arg l'
| nil => None
end.

Definition Cloud_getChannel (cl_arg : Cloud) (m : RSSModel) : option (Channel) :=
  Cloud_getChannelOnLinks cl_arg (@allModelLinks _ _ m).
  
Definition Cloud_getChannelObject (cl_arg : Cloud) (m : RSSModel) : option (RSSMetamodel_Object) :=
  match Cloud_getChannel cl_arg m with
  | Some ch_arg => Some (RSSMetamodel_toObject ChannelClass ch_arg) 
  | _ => None
  end.

Fixpoint Category_getChannelOnLinks (ca_arg : Category) (l : list RSSMetamodel_Link) : option (Channel) :=
match l with
| (Build_RSSMetamodel_Link CategoryChannelReference (BuildCategoryChannel Category_ctr channel_ctr)) :: l' => 
	  if beq_Category Category_ctr ca_arg then Some channel_ctr else Category_getChannelOnLinks ca_arg l'
| _ :: l' => Category_getChannelOnLinks ca_arg l'
| nil => None
end.

Definition Category_getChannel (ca_arg : Category) (m : RSSModel) : option (Channel) :=
  Category_getChannelOnLinks ca_arg (@allModelLinks _ _ m).
  
Definition Category_getChannelObject (ca_arg : Category) (m : RSSModel) : option (RSSMetamodel_Object) :=
  match Category_getChannel ca_arg m with
  | Some ch_arg => Some (RSSMetamodel_toObject ChannelClass ch_arg) 
  | _ => None
  end.
Fixpoint Category_getItemsOnLinks (ca_arg : Category) (l : list RSSMetamodel_Link) : option (Item) :=
match l with
| (Build_RSSMetamodel_Link CategoryItemsReference (BuildCategoryItems Category_ctr items_ctr)) :: l' => 
	  if beq_Category Category_ctr ca_arg then Some items_ctr else Category_getItemsOnLinks ca_arg l'
| _ :: l' => Category_getItemsOnLinks ca_arg l'
| nil => None
end.

Definition Category_getItems (ca_arg : Category) (m : RSSModel) : option (Item) :=
  Category_getItemsOnLinks ca_arg (@allModelLinks _ _ m).
  
Definition Category_getItemsObject (ca_arg : Category) (m : RSSModel) : option (RSSMetamodel_Object) :=
  match Category_getItems ca_arg m with
  | Some it_arg => Some (RSSMetamodel_toObject ItemClass it_arg) 
  | _ => None
  end.




(* Typeclass Instances *)	
#[export] Instance RSSMetamodel_ElementSum : Sum RSSMetamodel_Object RSSMetamodel_Class :=
{
	denoteSubType := RSSMetamodel_getTypeByClass;
	toSubType := RSSMetamodel_toClass;
	toSumType := RSSMetamodel_toObject;
}.

#[export] Instance RSSMetamodel_LinkSum : Sum RSSMetamodel_Link RSSMetamodel_Reference :=
{
	denoteSubType := RSSMetamodel_getTypeByReference;
	toSubType := RSSMetamodel_toReference;
	toSumType := RSSMetamodel_toLink;
}.

#[export] Instance RSSMetamodel_EqDec : EqDec RSSMetamodel_Object := {
    eq_b := beq_RSSMetamodel_Object;
}.

#[export] Instance RSSMetamodel_Metamodel_Instance : 
	Metamodel :=
{
	ModelElement := RSSMetamodel_Object;
	ModelLink := RSSMetamodel_Link;
}.

#[export] Instance RSSMetamodel_ModelingMetamodel_Instance : 
	ModelingMetamodel RSSMetamodel_Metamodel_Instance :=
{ 
    elements := RSSMetamodel_ElementSum;
    links := RSSMetamodel_LinkSum; 
}.

(* Useful lemmas *)

Lemma RSS_invert : 
  forall (rscl_arg: RSSMetamodel_Class) (t1 t2: RSSMetamodel_getTypeByClass rscl_arg), 
    Build_RSSMetamodel_Object rscl_arg t1 = Build_RSSMetamodel_Object rscl_arg t2 -> t1 = t2.
Admitted.

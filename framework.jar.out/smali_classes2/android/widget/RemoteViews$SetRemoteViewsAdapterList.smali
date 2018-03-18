.class Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetRemoteViewsAdapterList"
.end annotation


# static fields
.field public static final TAG:I = 0xf


# instance fields
.field list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/RemoteViews;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/widget/RemoteViews;

.field viewTypeCount:I


# direct methods
.method public constructor <init>(Landroid/widget/RemoteViews;ILjava/util/ArrayList;I)V
    .locals 1
    .param p1, "this$0"    # Landroid/widget/RemoteViews;
    .param p2, "id"    # I
    .param p4, "viewTypeCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/RemoteViews;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 639
    .local p3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/RemoteViews;>;"
    iput-object p1, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;->this$0:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action;)V

    .line 640
    iput p2, p0, Landroid/widget/RemoteViews$Action;->viewId:I

    .line 641
    iput-object p3, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;->list:Ljava/util/ArrayList;

    .line 642
    iput p4, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;->viewTypeCount:I

    .line 639
    return-void
.end method

.method public constructor <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .locals 4
    .param p1, "this$0"    # Landroid/widget/RemoteViews;
    .param p2, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 645
    iput-object p1, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;->this$0:Landroid/widget/RemoteViews;

    const/4 v3, 0x0

    invoke-direct {p0, v3}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action;)V

    .line 646
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/widget/RemoteViews$Action;->viewId:I

    .line 647
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;->viewTypeCount:I

    .line 648
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 649
    .local v0, "count":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;->list:Ljava/util/ArrayList;

    .line 651
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 652
    sget-object v3, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RemoteViews;

    .line 653
    .local v2, "rv":Landroid/widget/RemoteViews;
    iget-object v3, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 651
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 645
    .end local v2    # "rv":Landroid/widget/RemoteViews;
    :cond_0
    return-void
.end method


# virtual methods
.method public apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 8
    .param p1, "root"    # Landroid/view/View;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "handler"    # Landroid/widget/RemoteViews$OnClickHandler;

    .prologue
    .line 676
    iget v4, p0, Landroid/widget/RemoteViews$Action;->viewId:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 677
    .local v1, "target":Landroid/view/View;
    if-nez v1, :cond_0

    return-void

    .line 680
    :cond_0
    instance-of v4, p2, Landroid/appwidget/AppWidgetHostView;

    if-nez v4, :cond_1

    .line 681
    const-string/jumbo v4, "RemoteViews"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "SetRemoteViewsAdapterIntent action can only be used for AppWidgets (root id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 682
    iget v6, p0, Landroid/widget/RemoteViews$Action;->viewId:I

    .line 681
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 682
    const-string/jumbo v6, ")"

    .line 681
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    return-void

    .line 686
    :cond_1
    instance-of v4, v1, Landroid/widget/AbsListView;

    if-nez v4, :cond_2

    instance-of v4, v1, Landroid/widget/AdapterViewAnimator;

    if-eqz v4, :cond_4

    .line 692
    :cond_2
    instance-of v4, v1, Landroid/widget/AbsListView;

    if-eqz v4, :cond_6

    move-object v2, v1

    .line 693
    nop

    nop

    .line 694
    .local v2, "v":Landroid/widget/AbsListView;
    invoke-virtual {v2}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 695
    .local v0, "a":Landroid/widget/Adapter;
    instance-of v4, v0, Landroid/widget/RemoteViewsListAdapter;

    if-eqz v4, :cond_5

    iget v4, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;->viewTypeCount:I

    invoke-interface {v0}, Landroid/widget/Adapter;->getViewTypeCount()I

    move-result v5

    if-gt v4, v5, :cond_5

    .line 696
    nop

    nop

    .end local v0    # "a":Landroid/widget/Adapter;
    iget-object v4, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Landroid/widget/RemoteViewsListAdapter;->setViewsList(Ljava/util/ArrayList;)V

    .line 675
    .end local v2    # "v":Landroid/widget/AbsListView;
    :cond_3
    :goto_0
    return-void

    .line 687
    :cond_4
    const-string/jumbo v4, "RemoteViews"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Cannot setRemoteViewsAdapter on a view which is not an AbsListView or AdapterViewAnimator (id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 688
    iget v6, p0, Landroid/widget/RemoteViews$Action;->viewId:I

    .line 687
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 688
    const-string/jumbo v6, ")"

    .line 687
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    return-void

    .line 698
    .restart local v0    # "a":Landroid/widget/Adapter;
    .restart local v2    # "v":Landroid/widget/AbsListView;
    :cond_5
    new-instance v4, Landroid/widget/RemoteViewsListAdapter;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;->list:Ljava/util/ArrayList;

    iget v7, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;->viewTypeCount:I

    invoke-direct {v4, v5, v6, v7}, Landroid/widget/RemoteViewsListAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;I)V

    invoke-virtual {v2, v4}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 700
    .end local v0    # "a":Landroid/widget/Adapter;
    .end local v2    # "v":Landroid/widget/AbsListView;
    :cond_6
    instance-of v4, v1, Landroid/widget/AdapterViewAnimator;

    if-eqz v4, :cond_3

    move-object v3, v1

    .line 701
    nop

    nop

    .line 702
    .local v3, "v":Landroid/widget/AdapterViewAnimator;
    invoke-virtual {v3}, Landroid/widget/AdapterViewAnimator;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 703
    .restart local v0    # "a":Landroid/widget/Adapter;
    instance-of v4, v0, Landroid/widget/RemoteViewsListAdapter;

    if-eqz v4, :cond_7

    iget v4, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;->viewTypeCount:I

    invoke-interface {v0}, Landroid/widget/Adapter;->getViewTypeCount()I

    move-result v5

    if-gt v4, v5, :cond_7

    .line 704
    nop

    nop

    .end local v0    # "a":Landroid/widget/Adapter;
    iget-object v4, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Landroid/widget/RemoteViewsListAdapter;->setViewsList(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 706
    .restart local v0    # "a":Landroid/widget/Adapter;
    :cond_7
    new-instance v4, Landroid/widget/RemoteViewsListAdapter;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;->list:Ljava/util/ArrayList;

    iget v7, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;->viewTypeCount:I

    invoke-direct {v4, v5, v6, v7}, Landroid/widget/RemoteViewsListAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;I)V

    invoke-virtual {v3, v4}, Landroid/widget/AdapterViewAnimator;->setAdapter(Landroid/widget/Adapter;)V

    goto :goto_0
.end method

.method public getActionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 712
    const-string/jumbo v0, "SetRemoteViewsAdapterList"

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v4, 0x0

    .line 658
    const/16 v3, 0xf

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 659
    iget v3, p0, Landroid/widget/RemoteViews$Action;->viewId:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 660
    iget v3, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;->viewTypeCount:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 662
    iget-object v3, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;->list:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;->list:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 663
    :cond_0
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 657
    :cond_1
    return-void

    .line 665
    :cond_2
    iget-object v3, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;->list:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 666
    .local v0, "count":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 667
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 668
    iget-object v3, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RemoteViews;

    .line 669
    .local v2, "rv":Landroid/widget/RemoteViews;
    invoke-virtual {v2, p1, p2}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    .line 667
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

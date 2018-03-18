.class Lcom/android/server/YLAppFreezeController$AppFreezeStoreUtil$AppFreezeSet;
.super Ljava/lang/Object;
.source "YLAppFreezeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/YLAppFreezeController$AppFreezeStoreUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AppFreezeSet"
.end annotation


# instance fields
.field private mFrozenApps:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/ArraySet",
            "<",
            "Landroid/os/freeze/AppFreezeInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lcom/android/server/YLAppFreezeController$AppFreezeStoreUtil;


# direct methods
.method public constructor <init>(Lcom/android/server/YLAppFreezeController$AppFreezeStoreUtil;)V
    .locals 1
    .param p1, "this$1"    # Lcom/android/server/YLAppFreezeController$AppFreezeStoreUtil;

    .prologue
    .line 674
    iput-object p1, p0, Lcom/android/server/YLAppFreezeController$AppFreezeStoreUtil$AppFreezeSet;->this$1:Lcom/android/server/YLAppFreezeController$AppFreezeStoreUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 675
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/YLAppFreezeController$AppFreezeStoreUtil$AppFreezeSet;->mFrozenApps:Landroid/util/SparseArray;

    .line 674
    return-void
.end method


# virtual methods
.method public add(Landroid/os/freeze/AppFreezeInfo;)Z
    .locals 5
    .param p1, "app"    # Landroid/os/freeze/AppFreezeInfo;

    .prologue
    .line 714
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/os/freeze/AppFreezeInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 715
    :cond_0
    const-string/jumbo v2, "YLAppFreezeController"

    const-string/jumbo v3, "add app to frozenRecord: pkg is null"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    const/4 v2, 0x0

    return v2

    .line 718
    :cond_1
    const-string/jumbo v2, "YLAppFreezeController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "addAppToFrozenList: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/freeze/AppFreezeInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    invoke-virtual {p1}, Landroid/os/freeze/AppFreezeInfo;->getUid()I

    move-result v1

    .line 720
    .local v1, "uid":I
    iget-object v2, p0, Lcom/android/server/YLAppFreezeController$AppFreezeStoreUtil$AppFreezeSet;->mFrozenApps:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 721
    .local v0, "appSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/os/freeze/AppFreezeInfo;>;"
    if-nez v0, :cond_2

    .line 722
    new-instance v0, Landroid/util/ArraySet;

    .end local v0    # "appSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/os/freeze/AppFreezeInfo;>;"
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 723
    .restart local v0    # "appSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/os/freeze/AppFreezeInfo;>;"
    iget-object v2, p0, Lcom/android/server/YLAppFreezeController$AppFreezeStoreUtil$AppFreezeSet;->mFrozenApps:Landroid/util/SparseArray;

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 725
    :cond_2
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 775
    iget-object v0, p0, Lcom/android/server/YLAppFreezeController$AppFreezeStoreUtil$AppFreezeSet;->mFrozenApps:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 774
    return-void
.end method

.method public contains(Landroid/os/freeze/AppFreezeInfo;)Z
    .locals 3
    .param p1, "app"    # Landroid/os/freeze/AppFreezeInfo;

    .prologue
    .line 745
    invoke-virtual {p1}, Landroid/os/freeze/AppFreezeInfo;->getUid()I

    move-result v1

    .line 746
    .local v1, "uid":I
    iget-object v2, p0, Lcom/android/server/YLAppFreezeController$AppFreezeStoreUtil$AppFreezeSet;->mFrozenApps:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 747
    .local v0, "apps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/os/freeze/AppFreezeInfo;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public dumpAppfreezeList()V
    .locals 4

    .prologue
    .line 790
    const-string/jumbo v2, "YLAppFreezeController"

    const-string/jumbo v3, "========= frozen list start ========="

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    invoke-virtual {p0}, Lcom/android/server/YLAppFreezeController$AppFreezeStoreUtil$AppFreezeSet;->getAllAppFreezeInfos()Ljava/util/List;

    move-result-object v0

    .line 792
    .local v0, "allApps":Ljava/util/List;, "Ljava/util/List<Landroid/os/freeze/AppFreezeInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 793
    const-string/jumbo v3, "YLAppFreezeController"

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/freeze/AppFreezeInfo;

    invoke-virtual {v2}, Landroid/os/freeze/AppFreezeInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 795
    :cond_0
    const-string/jumbo v2, "YLAppFreezeController"

    const-string/jumbo v3, "========= frozen list end   ========="

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    return-void
.end method

.method public dumpAppfreezeList(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .prologue
    .line 779
    const-string/jumbo v2, "========= frozen list start ========="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 780
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 781
    invoke-virtual {p0}, Lcom/android/server/YLAppFreezeController$AppFreezeStoreUtil$AppFreezeSet;->getAllAppFreezeInfos()Ljava/util/List;

    move-result-object v0

    .line 782
    .local v0, "allApps":Ljava/util/List;, "Ljava/util/List<Landroid/os/freeze/AppFreezeInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 783
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/freeze/AppFreezeInfo;

    invoke-virtual {v2}, Landroid/os/freeze/AppFreezeInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 784
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 782
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 786
    :cond_0
    const-string/jumbo v2, "========= frozen list end   ========="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 778
    return-void
.end method

.method public get(ILjava/lang/String;)Landroid/os/freeze/AppFreezeInfo;
    .locals 5
    .param p1, "uid"    # I
    .param p2, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 751
    iget-object v3, p0, Lcom/android/server/YLAppFreezeController$AppFreezeStoreUtil$AppFreezeSet;->mFrozenApps:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 752
    .local v0, "apps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/os/freeze/AppFreezeInfo;>;"
    if-eqz v0, :cond_1

    .line 753
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 754
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/freeze/AppFreezeInfo;

    invoke-virtual {v3}, Landroid/os/freeze/AppFreezeInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 755
    .local v2, "packageName":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 756
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 757
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/freeze/AppFreezeInfo;

    return-object v3

    .line 753
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 761
    .end local v1    # "i":I
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_1
    return-object v4
.end method

.method public getAllAppFreezeInfos()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/os/freeze/AppFreezeInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 701
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/server/YLAppFreezeController$AppFreezeStoreUtil$AppFreezeSet;->size()I

    move-result v4

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 702
    .local v0, "all":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/freeze/AppFreezeInfo;>;"
    iget-object v4, p0, Lcom/android/server/YLAppFreezeController$AppFreezeStoreUtil$AppFreezeSet;->mFrozenApps:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 703
    iget-object v4, p0, Lcom/android/server/YLAppFreezeController$AppFreezeStoreUtil$AppFreezeSet;->mFrozenApps:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 704
    .local v1, "apps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/os/freeze/AppFreezeInfo;>;"
    if-eqz v1, :cond_0

    .line 705
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .local v3, "j":I
    :goto_1
    if-ltz v3, :cond_0

    .line 706
    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/freeze/AppFreezeInfo;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 705
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 702
    .end local v3    # "j":I
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 710
    .end local v1    # "apps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/os/freeze/AppFreezeInfo;>;"
    :cond_1
    return-object v0
.end method

.method public getAppFreezeInfosByUid(I)Ljava/util/List;
    .locals 4
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/os/freeze/AppFreezeInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 679
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 680
    .local v1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/freeze/AppFreezeInfo;>;"
    iget-object v3, p0, Lcom/android/server/YLAppFreezeController$AppFreezeStoreUtil$AppFreezeSet;->mFrozenApps:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 681
    .local v0, "apps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/os/freeze/AppFreezeInfo;>;"
    if-eqz v0, :cond_0

    .line 682
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 684
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .end local v1    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/freeze/AppFreezeInfo;>;"
    :goto_0
    return-object v1

    .restart local v1    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/freeze/AppFreezeInfo;>;"
    :cond_1
    move-object v1, v2

    goto :goto_0
.end method

.method public getAppFreezeInfosByUser(I)Ljava/util/List;
    .locals 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/os/freeze/AppFreezeInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 688
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 689
    .local v2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/freeze/AppFreezeInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/YLAppFreezeController$AppFreezeStoreUtil$AppFreezeSet;->mFrozenApps:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 690
    iget-object v3, p0, Lcom/android/server/YLAppFreezeController$AppFreezeStoreUtil$AppFreezeSet;->mFrozenApps:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 691
    iget-object v3, p0, Lcom/android/server/YLAppFreezeController$AppFreezeStoreUtil$AppFreezeSet;->mFrozenApps:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 692
    .local v0, "apps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/os/freeze/AppFreezeInfo;>;"
    if-eqz v0, :cond_0

    .line 693
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 689
    .end local v0    # "apps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/os/freeze/AppFreezeInfo;>;"
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 697
    :cond_1
    return-object v2
.end method

.method public remove(Landroid/os/freeze/AppFreezeInfo;)Z
    .locals 4
    .param p1, "app"    # Landroid/os/freeze/AppFreezeInfo;

    .prologue
    const/4 v1, 0x0

    .line 729
    invoke-virtual {p1}, Landroid/os/freeze/AppFreezeInfo;->getUid()I

    move-result v2

    .line 730
    .local v2, "uid":I
    iget-object v3, p0, Lcom/android/server/YLAppFreezeController$AppFreezeStoreUtil$AppFreezeSet;->mFrozenApps:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 731
    .local v0, "apps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/os/freeze/AppFreezeInfo;>;"
    if-eqz v0, :cond_2

    .line 732
    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v1

    .line 733
    .local v1, "didremoved":Z
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 734
    iget-object v3, p0, Lcom/android/server/YLAppFreezeController$AppFreezeStoreUtil$AppFreezeSet;->mFrozenApps:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 736
    :cond_1
    return v1

    .line 738
    .end local v1    # "didremoved":Z
    :cond_2
    return v1
.end method

.method public size()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 765
    iget-object v2, p0, Lcom/android/server/YLAppFreezeController$AppFreezeStoreUtil$AppFreezeSet;->mFrozenApps:Landroid/util/SparseArray;

    if-nez v2, :cond_0

    .line 766
    return v3

    .line 767
    :cond_0
    const/4 v1, 0x0

    .line 768
    .local v1, "total":I
    iget-object v2, p0, Lcom/android/server/YLAppFreezeController$AppFreezeStoreUtil$AppFreezeSet;->mFrozenApps:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 769
    iget-object v2, p0, Lcom/android/server/YLAppFreezeController$AppFreezeStoreUtil$AppFreezeSet;->mFrozenApps:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    add-int/2addr v1, v2

    .line 768
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 771
    :cond_1
    return v1
.end method

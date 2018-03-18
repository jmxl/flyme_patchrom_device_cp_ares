.class final Lcom/android/server/YLAppFreezeController$AppFreezeStoreUtil;
.super Ljava/lang/Object;
.source "YLAppFreezeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/YLAppFreezeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "AppFreezeStoreUtil"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/YLAppFreezeController$AppFreezeStoreUtil$AppFreezeSet;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "YLAppFreezeController"


# instance fields
.field final appFreezeSet:Lcom/android/server/YLAppFreezeController$AppFreezeStoreUtil$AppFreezeSet;

.field final mContext:Landroid/content/Context;

.field final mLock:Ljava/lang/Object;

.field final synthetic this$0:Lcom/android/server/YLAppFreezeController;


# direct methods
.method public constructor <init>(Lcom/android/server/YLAppFreezeController;Landroid/content/Context;Ljava/lang/Object;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/YLAppFreezeController;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "lock"    # Ljava/lang/Object;

    .prologue
    .line 586
    iput-object p1, p0, Lcom/android/server/YLAppFreezeController$AppFreezeStoreUtil;->this$0:Lcom/android/server/YLAppFreezeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 587
    iput-object p3, p0, Lcom/android/server/YLAppFreezeController$AppFreezeStoreUtil;->mLock:Ljava/lang/Object;

    .line 588
    iput-object p2, p0, Lcom/android/server/YLAppFreezeController$AppFreezeStoreUtil;->mContext:Landroid/content/Context;

    .line 589
    new-instance v0, Lcom/android/server/YLAppFreezeController$AppFreezeStoreUtil$AppFreezeSet;

    invoke-direct {v0, p0}, Lcom/android/server/YLAppFreezeController$AppFreezeStoreUtil$AppFreezeSet;-><init>(Lcom/android/server/YLAppFreezeController$AppFreezeStoreUtil;)V

    iput-object v0, p0, Lcom/android/server/YLAppFreezeController$AppFreezeStoreUtil;->appFreezeSet:Lcom/android/server/YLAppFreezeController$AppFreezeStoreUtil$AppFreezeSet;

    .line 586
    return-void
.end method


# virtual methods
.method public add(Landroid/os/freeze/AppFreezeInfo;)Z
    .locals 7
    .param p1, "app"    # Landroid/os/freeze/AppFreezeInfo;

    .prologue
    .line 593
    const/4 v3, 0x0

    .line 594
    .local v3, "res":Z
    iget-object v4, p0, Lcom/android/server/YLAppFreezeController$AppFreezeStoreUtil;->appFreezeSet:Lcom/android/server/YLAppFreezeController$AppFreezeStoreUtil$AppFreezeSet;

    invoke-virtual {p1}, Landroid/os/freeze/AppFreezeInfo;->getUid()I

    move-result v5

    invoke-virtual {p1}, Landroid/os/freeze/AppFreezeInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/YLAppFreezeController$AppFreezeStoreUtil$AppFreezeSet;->get(ILjava/lang/String;)Landroid/os/freeze/AppFreezeInfo;

    move-result-object v2

    .line 595
    .local v2, "oldApp":Landroid/os/freeze/AppFreezeInfo;
    if-eqz v2, :cond_0

    .line 597
    invoke-virtual {v2}, Landroid/os/freeze/AppFreezeInfo;->getFlag()I

    move-result v4

    invoke-virtual {p1}, Landroid/os/freeze/AppFreezeInfo;->getFlag()I

    move-result v5

    or-int v1, v4, v5

    .line 598
    .local v1, "newOptAction":I
    new-instance v0, Landroid/os/freeze/AppFreezeInfo;

    invoke-virtual {p1}, Landroid/os/freeze/AppFreezeInfo;->getUid()I

    move-result v4

    invoke-virtual {p1}, Landroid/os/freeze/AppFreezeInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, v5, v1}, Landroid/os/freeze/AppFreezeInfo;-><init>(ILjava/lang/String;I)V

    .line 599
    .local v0, "newApp":Landroid/os/freeze/AppFreezeInfo;
    iget-object v4, p0, Lcom/android/server/YLAppFreezeController$AppFreezeStoreUtil;->appFreezeSet:Lcom/android/server/YLAppFreezeController$AppFreezeStoreUtil$AppFreezeSet;

    invoke-virtual {v4, v2}, Lcom/android/server/YLAppFreezeController$AppFreezeStoreUtil$AppFreezeSet;->remove(Landroid/os/freeze/AppFreezeInfo;)Z

    .line 600
    iget-object v4, p0, Lcom/android/server/YLAppFreezeController$AppFreezeStoreUtil;->appFreezeSet:Lcom/android/server/YLAppFreezeController$AppFreezeStoreUtil$AppFreezeSet;

    invoke-virtual {v4, v0}, Lcom/android/server/YLAppFreezeController$AppFreezeStoreUtil$AppFreezeSet;->add(Landroid/os/freeze/AppFreezeInfo;)Z

    .line 601
    const/4 v3, 0x1

    .line 612
    .end local v0    # "newApp":Landroid/os/freeze/AppFreezeInfo;
    .end local v1    # "newOptAction":I
    :goto_0
    return v3

    .line 604
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/os/freeze/AppFreezeInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 605
    iget-object v4, p0, Lcom/android/server/YLAppFreezeController$AppFreezeStoreUtil;->appFreezeSet:Lcom/android/server/YLAppFreezeController$AppFreezeStoreUtil$AppFreezeSet;

    invoke-virtual {v4, p1}, Lcom/android/server/YLAppFreezeController$AppFreezeStoreUtil$AppFreezeSet;->add(Landroid/os/freeze/AppFreezeInfo;)Z

    .line 606
    const/4 v3, 0x1

    .line 604
    goto :goto_0

    .line 608
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 645
    iget-object v0, p0, Lcom/android/server/YLAppFreezeController$AppFreezeStoreUtil;->appFreezeSet:Lcom/android/server/YLAppFreezeController$AppFreezeStoreUtil$AppFreezeSet;

    invoke-virtual {v0}, Lcom/android/server/YLAppFreezeController$AppFreezeStoreUtil$AppFreezeSet;->clear()V

    .line 644
    return-void
.end method

.method public containsApp(Landroid/os/freeze/AppFreezeInfo;)Z
    .locals 1
    .param p1, "app"    # Landroid/os/freeze/AppFreezeInfo;

    .prologue
    .line 637
    iget-object v0, p0, Lcom/android/server/YLAppFreezeController$AppFreezeStoreUtil;->appFreezeSet:Lcom/android/server/YLAppFreezeController$AppFreezeStoreUtil$AppFreezeSet;

    invoke-virtual {v0, p1}, Lcom/android/server/YLAppFreezeController$AppFreezeStoreUtil$AppFreezeSet;->contains(Landroid/os/freeze/AppFreezeInfo;)Z

    move-result v0

    return v0
.end method

.method public dump()V
    .locals 1

    .prologue
    .line 664
    iget-object v0, p0, Lcom/android/server/YLAppFreezeController$AppFreezeStoreUtil;->appFreezeSet:Lcom/android/server/YLAppFreezeController$AppFreezeStoreUtil$AppFreezeSet;

    invoke-virtual {v0}, Lcom/android/server/YLAppFreezeController$AppFreezeStoreUtil$AppFreezeSet;->dumpAppfreezeList()V

    .line 663
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .prologue
    .line 667
    iget-object v0, p0, Lcom/android/server/YLAppFreezeController$AppFreezeStoreUtil;->appFreezeSet:Lcom/android/server/YLAppFreezeController$AppFreezeStoreUtil$AppFreezeSet;

    invoke-virtual {v0, p1}, Lcom/android/server/YLAppFreezeController$AppFreezeStoreUtil$AppFreezeSet;->dumpAppfreezeList(Ljava/io/PrintWriter;)V

    .line 666
    return-void
.end method

.method public getAllAppFreezeInfos()Ljava/util/List;
    .locals 1
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
    .line 656
    iget-object v0, p0, Lcom/android/server/YLAppFreezeController$AppFreezeStoreUtil;->appFreezeSet:Lcom/android/server/YLAppFreezeController$AppFreezeStoreUtil$AppFreezeSet;

    invoke-virtual {v0}, Lcom/android/server/YLAppFreezeController$AppFreezeStoreUtil$AppFreezeSet;->getAllAppFreezeInfos()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAppFreezeInfoByUid(I)Ljava/util/List;
    .locals 1
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
    .line 653
    iget-object v0, p0, Lcom/android/server/YLAppFreezeController$AppFreezeStoreUtil;->appFreezeSet:Lcom/android/server/YLAppFreezeController$AppFreezeStoreUtil$AppFreezeSet;

    invoke-virtual {v0, p1}, Lcom/android/server/YLAppFreezeController$AppFreezeStoreUtil$AppFreezeSet;->getAppFreezeInfosByUid(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAppFreezeInfoByUidAndPkg(ILjava/lang/String;)Landroid/os/freeze/AppFreezeInfo;
    .locals 1
    .param p1, "uid"    # I
    .param p2, "pkg"    # Ljava/lang/String;

    .prologue
    .line 660
    iget-object v0, p0, Lcom/android/server/YLAppFreezeController$AppFreezeStoreUtil;->appFreezeSet:Lcom/android/server/YLAppFreezeController$AppFreezeStoreUtil$AppFreezeSet;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/YLAppFreezeController$AppFreezeStoreUtil$AppFreezeSet;->get(ILjava/lang/String;)Landroid/os/freeze/AppFreezeInfo;

    move-result-object v0

    return-object v0
.end method

.method public getAppFreezeInfosByUser(I)Ljava/util/List;
    .locals 1
    .param p1, "userHandle"    # I
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
    .line 649
    iget-object v0, p0, Lcom/android/server/YLAppFreezeController$AppFreezeStoreUtil;->appFreezeSet:Lcom/android/server/YLAppFreezeController$AppFreezeStoreUtil$AppFreezeSet;

    invoke-virtual {v0, p1}, Lcom/android/server/YLAppFreezeController$AppFreezeStoreUtil$AppFreezeSet;->getAppFreezeInfosByUser(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public remove(Landroid/os/freeze/AppFreezeInfo;)Z
    .locals 4
    .param p1, "app"    # Landroid/os/freeze/AppFreezeInfo;

    .prologue
    .line 629
    iget-object v1, p0, Lcom/android/server/YLAppFreezeController$AppFreezeStoreUtil;->appFreezeSet:Lcom/android/server/YLAppFreezeController$AppFreezeStoreUtil$AppFreezeSet;

    invoke-virtual {v1, p1}, Lcom/android/server/YLAppFreezeController$AppFreezeStoreUtil$AppFreezeSet;->remove(Landroid/os/freeze/AppFreezeInfo;)Z

    move-result v0

    .line 630
    .local v0, "removed":Z
    if-nez v0, :cond_0

    .line 631
    const-string/jumbo v1, "YLAppFreezeController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removed app:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/freeze/AppFreezeInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    :cond_0
    return v0
.end method

.method public removeByUidAndPkg(ILjava/lang/String;)Z
    .locals 5
    .param p1, "uid"    # I
    .param p2, "pkg"    # Ljava/lang/String;

    .prologue
    .line 616
    iget-object v2, p0, Lcom/android/server/YLAppFreezeController$AppFreezeStoreUtil;->appFreezeSet:Lcom/android/server/YLAppFreezeController$AppFreezeStoreUtil$AppFreezeSet;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/YLAppFreezeController$AppFreezeStoreUtil$AppFreezeSet;->get(ILjava/lang/String;)Landroid/os/freeze/AppFreezeInfo;

    move-result-object v0

    .line 617
    .local v0, "app":Landroid/os/freeze/AppFreezeInfo;
    if-eqz v0, :cond_1

    .line 618
    iget-object v2, p0, Lcom/android/server/YLAppFreezeController$AppFreezeStoreUtil;->appFreezeSet:Lcom/android/server/YLAppFreezeController$AppFreezeStoreUtil$AppFreezeSet;

    invoke-virtual {v2, v0}, Lcom/android/server/YLAppFreezeController$AppFreezeStoreUtil$AppFreezeSet;->remove(Landroid/os/freeze/AppFreezeInfo;)Z

    move-result v1

    .line 619
    .local v1, "removed":Z
    if-nez v1, :cond_0

    .line 620
    const-string/jumbo v2, "YLAppFreezeController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removed app:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/freeze/AppFreezeInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    :cond_0
    return v1

    .line 624
    .end local v1    # "removed":Z
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public size()I
    .locals 1

    .prologue
    .line 641
    iget-object v0, p0, Lcom/android/server/YLAppFreezeController$AppFreezeStoreUtil;->appFreezeSet:Lcom/android/server/YLAppFreezeController$AppFreezeStoreUtil$AppFreezeSet;

    invoke-virtual {v0}, Lcom/android/server/YLAppFreezeController$AppFreezeStoreUtil$AppFreezeSet;->size()I

    move-result v0

    return v0
.end method

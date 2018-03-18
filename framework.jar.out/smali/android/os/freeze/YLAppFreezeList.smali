.class public Landroid/os/freeze/YLAppFreezeList;
.super Ljava/lang/Object;
.source "YLAppFreezeList.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mListener:Landroid/os/freeze/YLAppFreezeListener;

.field private mUidSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/os/freeze/YLAppFreezeList;->mUidSet:Ljava/util/Set;

    .line 21
    iput-object p1, p0, Landroid/os/freeze/YLAppFreezeList;->mContext:Landroid/content/Context;

    .line 22
    new-instance v0, Landroid/os/freeze/YLAppFreezeListener;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Landroid/os/freeze/YLAppFreezeListener;-><init>(Landroid/os/Looper;Landroid/os/freeze/YLAppFreezeList;)V

    iput-object v0, p0, Landroid/os/freeze/YLAppFreezeList;->mListener:Landroid/os/freeze/YLAppFreezeListener;

    .line 20
    return-void
.end method


# virtual methods
.method public addUid(I)V
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 30
    iget-object v0, p0, Landroid/os/freeze/YLAppFreezeList;->mUidSet:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 29
    return-void
.end method

.method public freezeRegisterListener()V
    .locals 3

    .prologue
    .line 54
    iget-object v1, p0, Landroid/os/freeze/YLAppFreezeList;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 55
    .local v0, "am":Landroid/app/ActivityManager;
    iget-object v1, p0, Landroid/os/freeze/YLAppFreezeList;->mListener:Landroid/os/freeze/YLAppFreezeListener;

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->freezeRegisterListener(Landroid/os/freeze/YLAppFreezeListener;)V

    .line 53
    return-void
.end method

.method public isFreeze(I)Z
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 44
    iget-object v0, p0, Landroid/os/freeze/YLAppFreezeList;->mUidSet:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    const/4 v0, 0x1

    return v0

    .line 47
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public remove(I)V
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 36
    iget-object v0, p0, Landroid/os/freeze/YLAppFreezeList;->mUidSet:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Landroid/os/freeze/YLAppFreezeList;->mUidSet:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 35
    :cond_0
    return-void
.end method

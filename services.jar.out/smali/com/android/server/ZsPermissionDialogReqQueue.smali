.class public Lcom/android/server/ZsPermissionDialogReqQueue;
.super Ljava/lang/Object;
.source "ZsPermissionDialogReqQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ZsPermissionDialogReqQueue$ZsPermissionDialogReq;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "ZsPermissionDialogReqQueue"

.field private static final WAIT_TIME:J = 0x2ee0L


# instance fields
.field private mDialog:Lcom/android/server/ZsPermissionDialog;

.field private resultList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/ZsPermissionDialogReqQueue$ZsPermissionDialogReq;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/ZsPermissionDialogReqQueue;->mDialog:Lcom/android/server/ZsPermissionDialog;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/ZsPermissionDialogReqQueue;->resultList:Ljava/util/List;

    .line 73
    return-void
.end method


# virtual methods
.method public getDialog()Lcom/android/server/ZsPermissionDialog;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/server/ZsPermissionDialogReqQueue;->mDialog:Lcom/android/server/ZsPermissionDialog;

    return-object v0
.end method

.method public notifyAll(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 88
    monitor-enter p0

    .line 89
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ZsPermissionDialogReqQueue;->resultList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 90
    iget-object v1, p0, Lcom/android/server/ZsPermissionDialogReqQueue;->resultList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ZsPermissionDialogReqQueue$ZsPermissionDialogReq;

    .line 91
    .local v0, "res":Lcom/android/server/ZsPermissionDialogReqQueue$ZsPermissionDialogReq;
    invoke-virtual {v0, p1}, Lcom/android/server/ZsPermissionDialogReqQueue$ZsPermissionDialogReq;->set(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 88
    .end local v0    # "res":Lcom/android/server/ZsPermissionDialogReqQueue$ZsPermissionDialogReq;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_0
    monitor-exit p0

    .line 87
    return-void
.end method

.method public register(Lcom/android/server/ZsPermissionDialogReqQueue$ZsPermissionDialogReq;)V
    .locals 4
    .param p1, "res"    # Lcom/android/server/ZsPermissionDialogReqQueue$ZsPermissionDialogReq;

    .prologue
    .line 79
    monitor-enter p0

    .line 80
    :try_start_0
    const-string/jumbo v1, "ZsPermissionDialogReqQueue"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "register...."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/ZsPermissionDialogReqQueue$ZsPermissionDialogReq;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const-string/jumbo v1, "ZsPermissionDialogReqQueue"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "queue:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/ZsPermissionDialogReqQueue;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v1, p0, Lcom/android/server/ZsPermissionDialogReqQueue;->resultList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 83
    .local v0, "temp":Z
    const-string/jumbo v1, "ZsPermissionDialogReqQueue"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "add complete:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 78
    return-void

    .line 79
    .end local v0    # "temp":Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public setDialog(Lcom/android/server/ZsPermissionDialog;)V
    .locals 0
    .param p1, "mDialog"    # Lcom/android/server/ZsPermissionDialog;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/android/server/ZsPermissionDialogReqQueue;->mDialog:Lcom/android/server/ZsPermissionDialog;

    .line 36
    return-void
.end method

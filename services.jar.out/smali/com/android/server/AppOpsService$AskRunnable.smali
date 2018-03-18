.class final Lcom/android/server/AppOpsService$AskRunnable;
.super Ljava/lang/Object;
.source "AppOpsService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "AskRunnable"
.end annotation


# instance fields
.field final code:I

.field final op:Lcom/android/server/AppOpsService$Op;

.field final packageName:Ljava/lang/String;

.field final request:Lcom/android/server/ZsPermissionDialogReqQueue$ZsPermissionDialogReq;

.field final synthetic this$0:Lcom/android/server/AppOpsService;

.field final uid:I


# direct methods
.method public constructor <init>(Lcom/android/server/AppOpsService;IILjava/lang/String;Lcom/android/server/AppOpsService$Op;Lcom/android/server/ZsPermissionDialogReqQueue$ZsPermissionDialogReq;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/AppOpsService;
    .param p2, "code"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "op"    # Lcom/android/server/AppOpsService$Op;
    .param p6, "request"    # Lcom/android/server/ZsPermissionDialogReqQueue$ZsPermissionDialogReq;

    .prologue
    .line 2758
    iput-object p1, p0, Lcom/android/server/AppOpsService$AskRunnable;->this$0:Lcom/android/server/AppOpsService;

    .line 2760
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2761
    iput p2, p0, Lcom/android/server/AppOpsService$AskRunnable;->code:I

    .line 2762
    iput p3, p0, Lcom/android/server/AppOpsService$AskRunnable;->uid:I

    .line 2763
    iput-object p4, p0, Lcom/android/server/AppOpsService$AskRunnable;->packageName:Ljava/lang/String;

    .line 2764
    iput-object p5, p0, Lcom/android/server/AppOpsService$AskRunnable;->op:Lcom/android/server/AppOpsService$Op;

    .line 2765
    iput-object p6, p0, Lcom/android/server/AppOpsService$AskRunnable;->request:Lcom/android/server/ZsPermissionDialogReqQueue$ZsPermissionDialogReq;

    .line 2759
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 2770
    const/4 v6, 0x0

    .line 2771
    .local v6, "d":Lcom/android/server/ZsPermissionDialog;
    iget-object v7, p0, Lcom/android/server/AppOpsService$AskRunnable;->this$0:Lcom/android/server/AppOpsService;

    monitor-enter v7

    .line 2772
    :try_start_0
    iget-object v1, p0, Lcom/android/server/AppOpsService$AskRunnable;->op:Lcom/android/server/AppOpsService$Op;

    iget-object v1, v1, Lcom/android/server/AppOpsService$Op;->dialogReqQueue:Lcom/android/server/ZsPermissionDialogReqQueue;

    iget-object v2, p0, Lcom/android/server/AppOpsService$AskRunnable;->request:Lcom/android/server/ZsPermissionDialogReqQueue$ZsPermissionDialogReq;

    invoke-virtual {v1, v2}, Lcom/android/server/ZsPermissionDialogReqQueue;->register(Lcom/android/server/ZsPermissionDialogReqQueue$ZsPermissionDialogReq;)V

    .line 2773
    iget-object v1, p0, Lcom/android/server/AppOpsService$AskRunnable;->op:Lcom/android/server/AppOpsService$Op;

    iget-object v1, v1, Lcom/android/server/AppOpsService$Op;->dialogReqQueue:Lcom/android/server/ZsPermissionDialogReqQueue;

    invoke-virtual {v1}, Lcom/android/server/ZsPermissionDialogReqQueue;->getDialog()Lcom/android/server/ZsPermissionDialog;

    move-result-object v1

    if-nez v1, :cond_1

    .line 2774
    new-instance v0, Lcom/android/server/ZsPermissionDialog;

    iget-object v1, p0, Lcom/android/server/AppOpsService$AskRunnable;->this$0:Lcom/android/server/AppOpsService;

    iget-object v1, v1, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    .line 2775
    iget-object v2, p0, Lcom/android/server/AppOpsService$AskRunnable;->this$0:Lcom/android/server/AppOpsService;

    iget v3, p0, Lcom/android/server/AppOpsService$AskRunnable;->code:I

    iget v4, p0, Lcom/android/server/AppOpsService$AskRunnable;->uid:I

    iget-object v5, p0, Lcom/android/server/AppOpsService$AskRunnable;->packageName:Ljava/lang/String;

    .line 2774
    invoke-direct/range {v0 .. v5}, Lcom/android/server/ZsPermissionDialog;-><init>(Landroid/content/Context;Lcom/android/server/AppOpsService;IILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2776
    .end local v6    # "d":Lcom/android/server/ZsPermissionDialog;
    .local v0, "d":Lcom/android/server/ZsPermissionDialog;
    :try_start_1
    iget-object v1, p0, Lcom/android/server/AppOpsService$AskRunnable;->op:Lcom/android/server/AppOpsService$Op;

    iget-object v1, v1, Lcom/android/server/AppOpsService$Op;->dialogReqQueue:Lcom/android/server/ZsPermissionDialogReqQueue;

    invoke-virtual {v1, v0}, Lcom/android/server/ZsPermissionDialogReqQueue;->setDialog(Lcom/android/server/ZsPermissionDialog;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_0
    monitor-exit v7

    .line 2779
    if-eqz v0, :cond_0

    .line 2780
    invoke-virtual {v0}, Lcom/android/server/ZsPermissionDialog;->show()V

    .line 2769
    :cond_0
    return-void

    .line 2771
    .end local v0    # "d":Lcom/android/server/ZsPermissionDialog;
    .restart local v6    # "d":Lcom/android/server/ZsPermissionDialog;
    :catchall_0
    move-exception v1

    move-object v0, v6

    .end local v6    # "d":Lcom/android/server/ZsPermissionDialog;
    .restart local v0    # "d":Lcom/android/server/ZsPermissionDialog;
    :goto_1
    monitor-exit v7

    throw v1

    :catchall_1
    move-exception v1

    goto :goto_1

    .end local v0    # "d":Lcom/android/server/ZsPermissionDialog;
    .restart local v6    # "d":Lcom/android/server/ZsPermissionDialog;
    :cond_1
    move-object v0, v6

    .restart local v0    # "d":Lcom/android/server/ZsPermissionDialog;
    goto :goto_0
.end method

.class Lcom/android/server/ZsPermissionDialog$1;
.super Landroid/os/Handler;
.source "ZsPermissionDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ZsPermissionDialog;-><init>(Landroid/content/Context;Lcom/android/server/AppOpsService;IILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ZsPermissionDialog;

.field final synthetic val$thread:Landroid/os/HandlerThread;


# direct methods
.method constructor <init>(Lcom/android/server/ZsPermissionDialog;Landroid/os/Looper;Landroid/os/HandlerThread;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/ZsPermissionDialog;
    .param p2, "$anonymous0"    # Landroid/os/Looper;
    .param p3, "val$thread"    # Landroid/os/HandlerThread;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/server/ZsPermissionDialog$1;->this$0:Lcom/android/server/ZsPermissionDialog;

    iput-object p3, p0, Lcom/android/server/ZsPermissionDialog$1;->val$thread:Landroid/os/HandlerThread;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 95
    const/4 v4, 0x1

    .line 96
    .local v4, "mode":I
    iget-object v0, p0, Lcom/android/server/ZsPermissionDialog$1;->this$0:Lcom/android/server/ZsPermissionDialog;

    invoke-virtual {v0}, Lcom/android/server/ZsPermissionDialog;->getCheckbox()Lcom/zeusis/widget/checkbox/ZeusisCheckbox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zeusis/widget/checkbox/ZeusisCheckbox;->isChecked()Z

    move-result v5

    .line 97
    .local v5, "remember":Z
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 111
    :pswitch_0
    const-string/jumbo v0, "ZsPermissionDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "default:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/ZsPermissionDialog$1;->this$0:Lcom/android/server/ZsPermissionDialog;

    invoke-virtual {v2}, Lcom/android/server/ZsPermissionDialog;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const/4 v4, 0x1

    .line 113
    const/4 v5, 0x0

    .line 117
    .end local v5    # "remember":Z
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/ZsPermissionDialog$1;->this$0:Lcom/android/server/ZsPermissionDialog;

    invoke-virtual {v0}, Lcom/android/server/ZsPermissionDialog;->dismissImmediately()V

    .line 118
    iget-object v0, p0, Lcom/android/server/ZsPermissionDialog$1;->this$0:Lcom/android/server/ZsPermissionDialog;

    invoke-static {v0}, Lcom/android/server/ZsPermissionDialog;->-get6(Lcom/android/server/ZsPermissionDialog;)Lcom/android/server/AppOpsService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ZsPermissionDialog$1;->this$0:Lcom/android/server/ZsPermissionDialog;

    invoke-static {v1}, Lcom/android/server/ZsPermissionDialog;->-get0(Lcom/android/server/ZsPermissionDialog;)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/ZsPermissionDialog$1;->this$0:Lcom/android/server/ZsPermissionDialog;

    invoke-static {v2}, Lcom/android/server/ZsPermissionDialog;->-get8(Lcom/android/server/ZsPermissionDialog;)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/ZsPermissionDialog$1;->this$0:Lcom/android/server/ZsPermissionDialog;

    invoke-static {v3}, Lcom/android/server/ZsPermissionDialog;->-get4(Lcom/android/server/ZsPermissionDialog;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/AppOpsService;->notifyOperation(IILjava/lang/String;IZ)V

    .line 120
    iget-object v0, p0, Lcom/android/server/ZsPermissionDialog$1;->this$0:Lcom/android/server/ZsPermissionDialog;

    invoke-static {v0}, Lcom/android/server/ZsPermissionDialog;->-get1(Lcom/android/server/ZsPermissionDialog;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 121
    iget-object v0, p0, Lcom/android/server/ZsPermissionDialog$1;->val$thread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 123
    const-string/jumbo v0, "ZsPermissionDialog"

    const-string/jumbo v1, "permission dialog dismissed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    return-void

    .line 99
    .restart local v5    # "remember":Z
    :pswitch_1
    const/4 v4, 0x0

    .line 100
    iget-object v0, p0, Lcom/android/server/ZsPermissionDialog$1;->this$0:Lcom/android/server/ZsPermissionDialog;

    invoke-static {v0}, Lcom/android/server/ZsPermissionDialog;->-get3(Lcom/android/server/ZsPermissionDialog;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    const/4 v5, 0x1

    .local v5, "remember":Z
    goto :goto_0

    .line 105
    .local v5, "remember":Z
    :pswitch_2
    const/4 v4, 0x1

    .line 106
    goto :goto_0

    .line 108
    :pswitch_3
    const/4 v4, 0x0

    .line 109
    goto :goto_0

    .line 97
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

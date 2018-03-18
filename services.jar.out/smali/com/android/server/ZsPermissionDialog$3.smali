.class Lcom/android/server/ZsPermissionDialog$3;
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


# direct methods
.method constructor <init>(Lcom/android/server/ZsPermissionDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/ZsPermissionDialog;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/android/server/ZsPermissionDialog$3;->this$0:Lcom/android/server/ZsPermissionDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 146
    iget-object v1, p0, Lcom/android/server/ZsPermissionDialog$3;->this$0:Lcom/android/server/ZsPermissionDialog;

    invoke-virtual {v1}, Lcom/android/server/ZsPermissionDialog;->getNegativeAction()Landroid/widget/Button;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 147
    iget-object v1, p0, Lcom/android/server/ZsPermissionDialog$3;->this$0:Lcom/android/server/ZsPermissionDialog;

    invoke-virtual {v1}, Lcom/android/server/ZsPermissionDialog;->getNegativeAction()Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 148
    .local v0, "text":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/ZsPermissionDialog$3;->this$0:Lcom/android/server/ZsPermissionDialog;

    iget-object v2, p0, Lcom/android/server/ZsPermissionDialog$3;->this$0:Lcom/android/server/ZsPermissionDialog;

    iget-object v3, p0, Lcom/android/server/ZsPermissionDialog$3;->this$0:Lcom/android/server/ZsPermissionDialog;

    invoke-static {v3}, Lcom/android/server/ZsPermissionDialog;->-get5(Lcom/android/server/ZsPermissionDialog;)I

    move-result v3

    invoke-static {v2, v0, v3}, Lcom/android/server/ZsPermissionDialog;->-wrap0(Lcom/android/server/ZsPermissionDialog;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/ZsPermissionDialog;->negativeAction(Ljava/lang/CharSequence;)Lcom/zeusis/widget/dialog/BaseDialog;

    .line 145
    .end local v0    # "text":Ljava/lang/String;
    :cond_0
    return-void
.end method

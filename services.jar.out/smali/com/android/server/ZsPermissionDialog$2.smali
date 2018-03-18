.class Lcom/android/server/ZsPermissionDialog$2;
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
.method constructor <init>(Lcom/android/server/ZsPermissionDialog;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/ZsPermissionDialog;
    .param p2, "$anonymous0"    # Landroid/os/Looper;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/server/ZsPermissionDialog$2;->this$0:Lcom/android/server/ZsPermissionDialog;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v4, 0x64

    .line 129
    iget-object v0, p0, Lcom/android/server/ZsPermissionDialog$2;->this$0:Lcom/android/server/ZsPermissionDialog;

    invoke-static {v0}, Lcom/android/server/ZsPermissionDialog;->-get5(Lcom/android/server/ZsPermissionDialog;)I

    move-result v0

    if-lez v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/android/server/ZsPermissionDialog$2;->this$0:Lcom/android/server/ZsPermissionDialog;

    invoke-static {v0}, Lcom/android/server/ZsPermissionDialog;->-get5(Lcom/android/server/ZsPermissionDialog;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/android/server/ZsPermissionDialog;->-set0(Lcom/android/server/ZsPermissionDialog;I)I

    .line 131
    iget-object v0, p0, Lcom/android/server/ZsPermissionDialog$2;->this$0:Lcom/android/server/ZsPermissionDialog;

    invoke-static {v0}, Lcom/android/server/ZsPermissionDialog;->-get2(Lcom/android/server/ZsPermissionDialog;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 132
    iget-object v0, p0, Lcom/android/server/ZsPermissionDialog$2;->this$0:Lcom/android/server/ZsPermissionDialog;

    invoke-static {v0}, Lcom/android/server/ZsPermissionDialog;->-get7(Lcom/android/server/ZsPermissionDialog;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 128
    :goto_0
    return-void

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/android/server/ZsPermissionDialog$2;->this$0:Lcom/android/server/ZsPermissionDialog;

    invoke-static {v0}, Lcom/android/server/ZsPermissionDialog;->-get1(Lcom/android/server/ZsPermissionDialog;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ZsPermissionDialog$2;->this$0:Lcom/android/server/ZsPermissionDialog;

    invoke-static {v1}, Lcom/android/server/ZsPermissionDialog;->-get1(Lcom/android/server/ZsPermissionDialog;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

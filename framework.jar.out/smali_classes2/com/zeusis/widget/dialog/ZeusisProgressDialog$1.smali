.class Lcom/zeusis/widget/dialog/ZeusisProgressDialog$1;
.super Landroid/os/Handler;
.source "ZeusisProgressDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zeusis/widget/dialog/ZeusisProgressDialog;->initProgressDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zeusis/widget/dialog/ZeusisProgressDialog;


# direct methods
.method constructor <init>(Lcom/zeusis/widget/dialog/ZeusisProgressDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/zeusis/widget/dialog/ZeusisProgressDialog;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/zeusis/widget/dialog/ZeusisProgressDialog$1;->this$0:Lcom/zeusis/widget/dialog/ZeusisProgressDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 138
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 139
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisProgressDialog$1;->this$0:Lcom/zeusis/widget/dialog/ZeusisProgressDialog;

    invoke-static {v0}, Lcom/zeusis/widget/dialog/ZeusisProgressDialog;->-wrap0(Lcom/zeusis/widget/dialog/ZeusisProgressDialog;)V

    .line 137
    return-void
.end method

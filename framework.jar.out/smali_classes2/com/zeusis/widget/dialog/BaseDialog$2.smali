.class Lcom/zeusis/widget/dialog/BaseDialog$2;
.super Ljava/lang/Object;
.source "BaseDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zeusis/widget/dialog/BaseDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zeusis/widget/dialog/BaseDialog;


# direct methods
.method constructor <init>(Lcom/zeusis/widget/dialog/BaseDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/zeusis/widget/dialog/BaseDialog;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/zeusis/widget/dialog/BaseDialog$2;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 163
    iget-object v1, p0, Lcom/zeusis/widget/dialog/BaseDialog$2;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    iget-object v1, v1, Lcom/zeusis/widget/dialog/BaseDialog;->mPositiveAction:Landroid/widget/Button;

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/zeusis/widget/dialog/BaseDialog$2;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    invoke-static {v1}, Lcom/zeusis/widget/dialog/BaseDialog;->-get3(Lcom/zeusis/widget/dialog/BaseDialog;)Landroid/os/Message;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 164
    iget-object v1, p0, Lcom/zeusis/widget/dialog/BaseDialog$2;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    invoke-static {v1}, Lcom/zeusis/widget/dialog/BaseDialog;->-get3(Lcom/zeusis/widget/dialog/BaseDialog;)Landroid/os/Message;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .line 173
    :goto_0
    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 178
    :cond_0
    iget-object v1, p0, Lcom/zeusis/widget/dialog/BaseDialog$2;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    invoke-static {v1}, Lcom/zeusis/widget/dialog/BaseDialog;->-get10(Lcom/zeusis/widget/dialog/BaseDialog;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/zeusis/widget/dialog/BaseDialog$2;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 161
    return-void

    .line 165
    :cond_1
    iget-object v1, p0, Lcom/zeusis/widget/dialog/BaseDialog$2;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    iget-object v1, v1, Lcom/zeusis/widget/dialog/BaseDialog;->mNegativeAction:Landroid/widget/Button;

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Lcom/zeusis/widget/dialog/BaseDialog$2;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    invoke-static {v1}, Lcom/zeusis/widget/dialog/BaseDialog;->-get1(Lcom/zeusis/widget/dialog/BaseDialog;)Landroid/os/Message;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 166
    iget-object v1, p0, Lcom/zeusis/widget/dialog/BaseDialog$2;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    invoke-static {v1}, Lcom/zeusis/widget/dialog/BaseDialog;->-get1(Lcom/zeusis/widget/dialog/BaseDialog;)Landroid/os/Message;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .local v0, "m":Landroid/os/Message;
    goto :goto_0

    .line 167
    .end local v0    # "m":Landroid/os/Message;
    :cond_2
    iget-object v1, p0, Lcom/zeusis/widget/dialog/BaseDialog$2;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    iget-object v1, v1, Lcom/zeusis/widget/dialog/BaseDialog;->mNeutralAction:Landroid/widget/Button;

    if-ne p1, v1, :cond_3

    iget-object v1, p0, Lcom/zeusis/widget/dialog/BaseDialog$2;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    invoke-static {v1}, Lcom/zeusis/widget/dialog/BaseDialog;->-get2(Lcom/zeusis/widget/dialog/BaseDialog;)Landroid/os/Message;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 168
    iget-object v1, p0, Lcom/zeusis/widget/dialog/BaseDialog$2;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    invoke-static {v1}, Lcom/zeusis/widget/dialog/BaseDialog;->-get2(Lcom/zeusis/widget/dialog/BaseDialog;)Landroid/os/Message;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .restart local v0    # "m":Landroid/os/Message;
    goto :goto_0

    .line 170
    .end local v0    # "m":Landroid/os/Message;
    :cond_3
    const/4 v0, 0x0

    .local v0, "m":Landroid/os/Message;
    goto :goto_0
.end method

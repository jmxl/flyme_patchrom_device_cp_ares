.class Lcom/zeusis/widget/dialog/BaseDialog$4;
.super Ljava/lang/Object;
.source "BaseDialog.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zeusis/widget/dialog/BaseDialog;->dismiss()V
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
    .line 1472
    iput-object p1, p0, Lcom/zeusis/widget/dialog/BaseDialog$4;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1484
    iget-object v0, p0, Lcom/zeusis/widget/dialog/BaseDialog$4;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/zeusis/widget/dialog/BaseDialog;->-set0(Lcom/zeusis/widget/dialog/BaseDialog;Z)Z

    .line 1485
    iget-object v0, p0, Lcom/zeusis/widget/dialog/BaseDialog$4;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    invoke-static {v0}, Lcom/zeusis/widget/dialog/BaseDialog;->-get6(Lcom/zeusis/widget/dialog/BaseDialog;)Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1486
    iget-object v0, p0, Lcom/zeusis/widget/dialog/BaseDialog$4;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    invoke-static {v0}, Lcom/zeusis/widget/dialog/BaseDialog;->-get10(Lcom/zeusis/widget/dialog/BaseDialog;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/zeusis/widget/dialog/BaseDialog$4;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    invoke-static {v1}, Lcom/zeusis/widget/dialog/BaseDialog;->-get9(Lcom/zeusis/widget/dialog/BaseDialog;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1483
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1479
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1475
    iget-object v0, p0, Lcom/zeusis/widget/dialog/BaseDialog$4;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/zeusis/widget/dialog/BaseDialog;->-set0(Lcom/zeusis/widget/dialog/BaseDialog;Z)Z

    .line 1474
    return-void
.end method

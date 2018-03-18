.class Lcom/zeusis/widget/dialog/BaseDialog$3;
.super Ljava/lang/Object;
.source "BaseDialog.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zeusis/widget/dialog/BaseDialog;->onStart()V
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
    .line 1436
    iput-object p1, p0, Lcom/zeusis/widget/dialog/BaseDialog$3;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 3

    .prologue
    .line 1439
    iget-object v1, p0, Lcom/zeusis/widget/dialog/BaseDialog$3;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    invoke-static {v1}, Lcom/zeusis/widget/dialog/BaseDialog;->-get6(Lcom/zeusis/widget/dialog/BaseDialog;)Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1440
    iget-object v1, p0, Lcom/zeusis/widget/dialog/BaseDialog$3;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    invoke-static {v1}, Lcom/zeusis/widget/dialog/BaseDialog;->-get6(Lcom/zeusis/widget/dialog/BaseDialog;)Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/zeusis/widget/dialog/BaseDialog$3;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    iget v2, v2, Lcom/zeusis/widget/dialog/BaseDialog;->mInAnimationId:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1441
    .local v0, "anim":Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/zeusis/widget/dialog/BaseDialog$3;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    invoke-static {v1}, Lcom/zeusis/widget/dialog/BaseDialog;->-get6(Lcom/zeusis/widget/dialog/BaseDialog;)Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1442
    const/4 v1, 0x0

    return v1
.end method

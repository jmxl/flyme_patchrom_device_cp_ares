.class Landroid/widget/PressGestureDetector$TextBoom$1;
.super Ljava/lang/Object;
.source "PressGestureDetector.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/PressGestureDetector$TextBoom;->startLoopAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/PressGestureDetector$TextBoom;


# direct methods
.method constructor <init>(Landroid/widget/PressGestureDetector$TextBoom;)V
    .locals 0
    .param p1, "this$1"    # Landroid/widget/PressGestureDetector$TextBoom;

    .prologue
    .line 315
    iput-object p1, p0, Landroid/widget/PressGestureDetector$TextBoom$1;->this$1:Landroid/widget/PressGestureDetector$TextBoom;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 318
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 319
    iget-object v0, p0, Landroid/widget/PressGestureDetector$TextBoom$1;->this$1:Landroid/widget/PressGestureDetector$TextBoom;

    iget-object v0, v0, Landroid/widget/PressGestureDetector$TextBoom;->this$0:Landroid/widget/PressGestureDetector;

    invoke-static {v0}, Landroid/widget/PressGestureDetector;->-get4(Landroid/widget/PressGestureDetector;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 320
    const-string/jumbo v0, "PressGestureDetector"

    const-string/jumbo v1, "Cancel animation, mTouchedTextView has been reset to null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iget-object v0, p0, Landroid/widget/PressGestureDetector$TextBoom$1;->this$1:Landroid/widget/PressGestureDetector$TextBoom;

    invoke-virtual {v0}, Landroid/widget/PressGestureDetector$TextBoom;->stopTextBoom()V

    .line 322
    return-void

    .line 324
    :cond_0
    iget-object v0, p0, Landroid/widget/PressGestureDetector$TextBoom$1;->this$1:Landroid/widget/PressGestureDetector$TextBoom;

    iget-object v0, v0, Landroid/widget/PressGestureDetector$TextBoom;->this$0:Landroid/widget/PressGestureDetector;

    invoke-static {v0}, Landroid/widget/PressGestureDetector;->-get4(Landroid/widget/PressGestureDetector;)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 325
    iget-object v0, p0, Landroid/widget/PressGestureDetector$TextBoom$1;->this$1:Landroid/widget/PressGestureDetector$TextBoom;

    iget-object v0, v0, Landroid/widget/PressGestureDetector$TextBoom;->this$0:Landroid/widget/PressGestureDetector;

    invoke-static {v0}, Landroid/widget/PressGestureDetector;->-get4(Landroid/widget/PressGestureDetector;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTrimmedFoundText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 326
    const-string/jumbo v0, "PressGestureDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Found text is empty for TextView="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/PressGestureDetector$TextBoom$1;->this$1:Landroid/widget/PressGestureDetector$TextBoom;

    iget-object v2, v2, Landroid/widget/PressGestureDetector$TextBoom;->this$0:Landroid/widget/PressGestureDetector;

    invoke-static {v2}, Landroid/widget/PressGestureDetector;->-get4(Landroid/widget/PressGestureDetector;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    iget-object v0, p0, Landroid/widget/PressGestureDetector$TextBoom$1;->this$1:Landroid/widget/PressGestureDetector$TextBoom;

    invoke-virtual {v0}, Landroid/widget/PressGestureDetector$TextBoom;->stopTextBoom()V

    .line 328
    return-void

    .line 330
    :cond_1
    iget-object v0, p0, Landroid/widget/PressGestureDetector$TextBoom$1;->this$1:Landroid/widget/PressGestureDetector$TextBoom;

    iget-object v0, v0, Landroid/widget/PressGestureDetector$TextBoom;->this$0:Landroid/widget/PressGestureDetector;

    invoke-static {v0}, Landroid/widget/PressGestureDetector;->-get4(Landroid/widget/PressGestureDetector;)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/webkit/WebView;

    if-nez v0, :cond_2

    .line 331
    const-string/jumbo v0, "org.chromium.content.browser.ContentView"

    iget-object v1, p0, Landroid/widget/PressGestureDetector$TextBoom$1;->this$1:Landroid/widget/PressGestureDetector$TextBoom;

    iget-object v1, v1, Landroid/widget/PressGestureDetector$TextBoom;->this$0:Landroid/widget/PressGestureDetector;

    invoke-static {v1}, Landroid/widget/PressGestureDetector;->-get4(Landroid/widget/PressGestureDetector;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 330
    if-eqz v0, :cond_3

    .line 332
    :cond_2
    iget-object v0, p0, Landroid/widget/PressGestureDetector$TextBoom$1;->this$1:Landroid/widget/PressGestureDetector$TextBoom;

    iget-object v0, v0, Landroid/widget/PressGestureDetector$TextBoom;->this$0:Landroid/widget/PressGestureDetector;

    invoke-static {v0}, Landroid/widget/PressGestureDetector;->-get5(Landroid/widget/PressGestureDetector;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 333
    const-string/jumbo v0, "PressGestureDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Found text is empty for WebView ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/PressGestureDetector$TextBoom$1;->this$1:Landroid/widget/PressGestureDetector$TextBoom;

    iget-object v2, v2, Landroid/widget/PressGestureDetector$TextBoom;->this$0:Landroid/widget/PressGestureDetector;

    invoke-static {v2}, Landroid/widget/PressGestureDetector;->-get4(Landroid/widget/PressGestureDetector;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    iget-object v0, p0, Landroid/widget/PressGestureDetector$TextBoom$1;->this$1:Landroid/widget/PressGestureDetector$TextBoom;

    invoke-virtual {v0}, Landroid/widget/PressGestureDetector$TextBoom;->stopTextBoom()V

    .line 335
    return-void

    .line 337
    :cond_3
    iget-object v0, p0, Landroid/widget/PressGestureDetector$TextBoom$1;->this$1:Landroid/widget/PressGestureDetector$TextBoom;

    iget-object v0, v0, Landroid/widget/PressGestureDetector$TextBoom;->this$0:Landroid/widget/PressGestureDetector;

    invoke-static {v0}, Landroid/widget/PressGestureDetector;->-get4(Landroid/widget/PressGestureDetector;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getFindText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 339
    const-string/jumbo v0, "PressGestureDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Found text is empty for view="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/PressGestureDetector$TextBoom$1;->this$1:Landroid/widget/PressGestureDetector$TextBoom;

    iget-object v2, v2, Landroid/widget/PressGestureDetector$TextBoom;->this$0:Landroid/widget/PressGestureDetector;

    invoke-static {v2}, Landroid/widget/PressGestureDetector;->-get4(Landroid/widget/PressGestureDetector;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    iget-object v0, p0, Landroid/widget/PressGestureDetector$TextBoom$1;->this$1:Landroid/widget/PressGestureDetector$TextBoom;

    invoke-virtual {v0}, Landroid/widget/PressGestureDetector$TextBoom;->stopTextBoom()V

    .line 342
    return-void

    .line 317
    :cond_4
    return-void
.end method

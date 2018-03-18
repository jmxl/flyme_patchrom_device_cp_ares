.class Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;
.super Landroid/widget/FrameLayout;
.source "GlobalActionViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/global/GlobalActionViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GlobalActionDecorView"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/global/GlobalActionViewManager;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/global/GlobalActionViewManager;Landroid/content/Context;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/policy/global/GlobalActionViewManager;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;->this$0:Lcom/android/server/policy/global/GlobalActionViewManager;

    .line 99
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 100
    const/high16 v0, 0x41800000    # 16.0f

    invoke-virtual {p0, v0}, Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;->setBlurRadiusDp(F)V

    .line 101
    const/high16 v0, 0x3e800000    # 0.25f

    invoke-virtual {p0, v0}, Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;->setBlurLumaContrast(F)V

    .line 102
    const v0, -0x414ccccd    # -0.35f

    invoke-virtual {p0, v0}, Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;->setBlurLumaBrightness(F)V

    .line 103
    const v0, 0x3f4ccccd    # 0.8f

    invoke-virtual {p0, v0}, Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;->setBlurChromaContrast(F)V

    .line 104
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;->setBlurMode(I)V

    .line 105
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const v1, -0x66eae2d9

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 98
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 110
    const/4 v0, 0x0

    .line 111
    .local v0, "handle":Z
    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;->this$0:Lcom/android/server/policy/global/GlobalActionViewManager;

    invoke-static {v1}, Lcom/android/server/policy/global/GlobalActionViewManager;->-get1(Lcom/android/server/policy/global/GlobalActionViewManager;)Lcom/android/server/policy/global/GlobalActionHostView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 112
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 113
    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;->this$0:Lcom/android/server/policy/global/GlobalActionViewManager;

    invoke-static {v1}, Lcom/android/server/policy/global/GlobalActionViewManager;->-get0(Lcom/android/server/policy/global/GlobalActionViewManager;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "KeyCode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 126
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    return v1

    .line 116
    :sswitch_0
    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;->this$0:Lcom/android/server/policy/global/GlobalActionViewManager;

    invoke-virtual {v1}, Lcom/android/server/policy/global/GlobalActionViewManager;->hide()V

    goto :goto_0

    .line 120
    :sswitch_1
    const/4 v1, 0x1

    return v1

    .line 114
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x18 -> :sswitch_1
        0x19 -> :sswitch_1
    .end sparse-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;->this$0:Lcom/android/server/policy/global/GlobalActionViewManager;

    invoke-virtual {v0}, Lcom/android/server/policy/global/GlobalActionViewManager;->hide()V

    .line 132
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

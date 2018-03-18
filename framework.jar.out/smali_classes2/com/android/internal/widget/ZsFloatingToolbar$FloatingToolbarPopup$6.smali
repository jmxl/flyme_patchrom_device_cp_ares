.class Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ZsFloatingToolbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;-><init>(Landroid/content/Context;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;

    .prologue
    .line 415
    iput-object p1, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup$6;->this$1:Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 418
    iget-object v0, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup$6;->this$1:Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;

    invoke-static {v0}, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->-get2(Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 417
    return-void
.end method

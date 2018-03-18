.class Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup$8;
.super Ljava/lang/Object;
.source "ZsFloatingToolbar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->show(Landroid/graphics/Rect;)V
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
    .line 481
    iput-object p1, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup$8;->this$1:Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 484
    iget-object v0, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup$8;->this$1:Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;

    invoke-static {v0}, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->-get0(Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;)Landroid/widget/HorizontalScrollView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 485
    iget-object v0, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup$8;->this$1:Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;

    iget-object v1, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup$8;->this$1:Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;

    invoke-static {v1}, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->-get0(Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;)Landroid/widget/HorizontalScrollView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getScrollX()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->-wrap0(Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;I)V

    .line 483
    :cond_0
    return-void
.end method

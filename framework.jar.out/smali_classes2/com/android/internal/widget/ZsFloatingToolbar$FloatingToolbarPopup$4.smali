.class Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup$4;
.super Landroid/view/ViewOutlineProvider;
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
    .line 374
    iput-object p1, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup$4;->this$1:Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "outline"    # Landroid/graphics/Outline;

    .prologue
    const/4 v1, 0x0

    .line 377
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    iget-object v0, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup$4;->this$1:Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;

    invoke-static {v0}, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->-get4(Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;)Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup$FloatingToolbarUtility;

    move-result-object v0

    iget v0, v0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup$FloatingToolbarUtility;->dimenOutlineRadiusWidth:I

    int-to-float v5, v0

    move-object v0, p2

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    .line 376
    return-void
.end method

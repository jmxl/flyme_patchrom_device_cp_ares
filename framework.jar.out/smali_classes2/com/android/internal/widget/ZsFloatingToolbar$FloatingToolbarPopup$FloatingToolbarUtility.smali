.class Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup$FloatingToolbarUtility;
.super Ljava/lang/Object;
.source "ZsFloatingToolbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FloatingToolbarUtility"
.end annotation


# instance fields
.field final dimenBetween:I

.field final dimenBetweenMargin2LOrR:I

.field final dimenContentHeight:I

.field final dimenContentMinWidth:I

.field final dimenConvexHeight:I

.field final dimenConvexWidth:I

.field final dimenItemWidthDivider:I

.field final dimenOutlineRadiusWidth:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1032
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1033
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105015a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup$FloatingToolbarUtility;->dimenContentMinWidth:I

    .line 1034
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105015b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup$FloatingToolbarUtility;->dimenContentHeight:I

    .line 1035
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105015c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup$FloatingToolbarUtility;->dimenItemWidthDivider:I

    .line 1036
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105015d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup$FloatingToolbarUtility;->dimenConvexWidth:I

    .line 1037
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105015e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup$FloatingToolbarUtility;->dimenConvexHeight:I

    .line 1038
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050161

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup$FloatingToolbarUtility;->dimenOutlineRadiusWidth:I

    .line 1039
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105015f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup$FloatingToolbarUtility;->dimenBetween:I

    .line 1040
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050160

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup$FloatingToolbarUtility;->dimenBetweenMargin2LOrR:I

    .line 1032
    return-void
.end method

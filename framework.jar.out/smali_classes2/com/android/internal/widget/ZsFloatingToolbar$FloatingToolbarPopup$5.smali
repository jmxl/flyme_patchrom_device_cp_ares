.class Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup$5;
.super Ljava/lang/Object;
.source "ZsFloatingToolbar.java"

# interfaces
.implements Landroid/view/View$OnScrollChangeListener;


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
    .line 400
    iput-object p1, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup$5;->this$1:Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChange(Landroid/view/View;IIII)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "newX"    # I
    .param p3, "newY"    # I
    .param p4, "oldX"    # I
    .param p5, "oldY"    # I

    .prologue
    .line 403
    iget-object v0, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup$5;->this$1:Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;

    invoke-static {v0, p2}, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->-wrap0(Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;I)V

    .line 402
    return-void
.end method

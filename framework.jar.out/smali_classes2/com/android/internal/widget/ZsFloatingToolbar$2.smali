.class Lcom/android/internal/widget/ZsFloatingToolbar$2;
.super Ljava/lang/Object;
.source "ZsFloatingToolbar.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/ZsFloatingToolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mNewRect:Landroid/graphics/Rect;

.field private final mOldRect:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/android/internal/widget/ZsFloatingToolbar;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/ZsFloatingToolbar;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/internal/widget/ZsFloatingToolbar;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/internal/widget/ZsFloatingToolbar$2;->this$0:Lcom/android/internal/widget/ZsFloatingToolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ZsFloatingToolbar$2;->mNewRect:Landroid/graphics/Rect;

    .line 75
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ZsFloatingToolbar$2;->mOldRect:Landroid/graphics/Rect;

    .line 72
    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "newLeft"    # I
    .param p3, "newRight"    # I
    .param p4, "newTop"    # I
    .param p5, "newBottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldRight"    # I
    .param p8, "oldTop"    # I
    .param p9, "oldBottom"    # I

    .prologue
    .line 81
    iget-object v4, p0, Lcom/android/internal/widget/ZsFloatingToolbar$2;->mNewRect:Landroid/graphics/Rect;

    move/from16 v0, p5

    invoke-virtual {v4, p2, p3, p4, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 82
    iget-object v4, p0, Lcom/android/internal/widget/ZsFloatingToolbar$2;->mOldRect:Landroid/graphics/Rect;

    move/from16 v0, p6

    move/from16 v1, p7

    move/from16 v2, p8

    move/from16 v3, p9

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 83
    iget-object v4, p0, Lcom/android/internal/widget/ZsFloatingToolbar$2;->this$0:Lcom/android/internal/widget/ZsFloatingToolbar;

    invoke-static {v4}, Lcom/android/internal/widget/ZsFloatingToolbar;->-get1(Lcom/android/internal/widget/ZsFloatingToolbar;)Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/widget/ZsFloatingToolbar$2;->mNewRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/internal/widget/ZsFloatingToolbar$2;->mOldRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    invoke-static {}, Lcom/android/internal/widget/ZsFloatingToolbar;->-get0()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 86
    const-string/jumbo v4, "ZsFloatingToolbar"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onLayoutChange: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 87
    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string/jumbo v7, "NL:%d NR:%d NT:%d, NB:%d  OL:%d OR:%d OT:%d OB:%d"

    const/16 v8, 0x8

    new-array v8, v8, [Ljava/lang/Object;

    .line 88
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x1

    aput-object v9, v8, v10

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x2

    aput-object v9, v8, v10

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x3

    aput-object v9, v8, v10

    .line 89
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x4

    aput-object v9, v8, v10

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x5

    aput-object v9, v8, v10

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x6

    aput-object v9, v8, v10

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x7

    aput-object v9, v8, v10

    .line 87
    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 86
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_2
    iget-object v4, p0, Lcom/android/internal/widget/ZsFloatingToolbar$2;->this$0:Lcom/android/internal/widget/ZsFloatingToolbar;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/android/internal/widget/ZsFloatingToolbar;->-set0(Lcom/android/internal/widget/ZsFloatingToolbar;Z)Z

    .line 93
    iget-object v4, p0, Lcom/android/internal/widget/ZsFloatingToolbar$2;->this$0:Lcom/android/internal/widget/ZsFloatingToolbar;

    invoke-virtual {v4}, Lcom/android/internal/widget/ZsFloatingToolbar;->updateLayout()Lcom/android/internal/widget/ZsFloatingToolbar;

    goto :goto_0
.end method

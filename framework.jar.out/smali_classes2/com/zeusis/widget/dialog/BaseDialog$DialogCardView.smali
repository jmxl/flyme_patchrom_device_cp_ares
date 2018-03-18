.class Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;
.super Landroid/view/ViewGroup;
.source "BaseDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zeusis/widget/dialog/BaseDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DialogCardView"
.end annotation


# static fields
.field private static final DIALOG_MARGIN_START:I = 0x14


# instance fields
.field private mActionMarginTop:I

.field private mContentMarginBottom:I

.field private mContentMarginLeft:I

.field private mContentMarginRight:I

.field private mContentMarginTop:I

.field private mDialogPadding:F

.field private mDividerPaint:Landroid/graphics/Paint;

.field private mDividerPos:F

.field private mIconMarginBottom:I

.field private mIconMarginLeft:I

.field private mIconMarginRight:I

.field private mIconMarginTop:I

.field private mIsRtl:Z

.field private final mMeasureTextRect:Landroid/graphics/Rect;

.field private mScreenWidth:I

.field private mShowDivider:Z

.field private mShowTitleDivider:Z

.field private mTitieDividerPos:F

.field private mTitleMarginBottom:I

.field private mTitleMarginLeft:I

.field private mTitleMarginRight:I

.field private mTitleMarginTop:I

.field final synthetic this$0:Lcom/zeusis/widget/dialog/BaseDialog;


# direct methods
.method public constructor <init>(Lcom/zeusis/widget/dialog/BaseDialog;Landroid/content/Context;)V
    .locals 3
    .param p1, "this$0"    # Lcom/zeusis/widget/dialog/BaseDialog;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v0, -0x40800000    # -1.0f

    const/4 v2, 0x0

    .line 1669
    iput-object p1, p0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    .line 1670
    invoke-direct {p0, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 1640
    iput v0, p0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->mDividerPos:F

    .line 1641
    iput v0, p0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->mTitieDividerPos:F

    .line 1642
    iput-boolean v2, p0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->mShowDivider:Z

    .line 1643
    iput-boolean v2, p0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->mShowTitleDivider:Z

    .line 1663
    iput-boolean v2, p0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->mIsRtl:Z

    .line 1667
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->mMeasureTextRect:Landroid/graphics/Rect;

    .line 1676
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x14

    invoke-static {v0, v1}, Lcom/zeusis/widget/dialog/BaseDialog;->dpToPx(Landroid/content/Context;I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->mDialogPadding:F

    .line 1677
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->mDividerPaint:Landroid/graphics/Paint;

    .line 1678
    iget-object v0, p0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->mDividerPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1679
    invoke-virtual {p0, v2}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 1669
    return-void
.end method

.method private measureActionButton(Landroid/widget/Button;)I
    .locals 14
    .param p1, "actionButton"    # Landroid/widget/Button;

    .prologue
    const/high16 v13, 0x40000000    # 2.0f

    .line 1765
    const/4 v0, 0x0

    .line 1766
    .local v0, "actionButtonWidth":I
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v7

    .line 1767
    .local v7, "tp":Landroid/text/TextPaint;
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1768
    .local v4, "text":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    iget-object v10, p0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->mMeasureTextRect:Landroid/graphics/Rect;

    const/4 v11, 0x0

    invoke-virtual {v7, v4, v11, v9, v10}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 1769
    iget-object v9, p0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->mMeasureTextRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v6

    .line 1770
    .local v6, "textWidth":I
    iget-object v9, p0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->mMeasureTextRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v5

    .line 1771
    .local v5, "textHeight":I
    iget-object v9, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const/16 v10, 0x24

    invoke-static {v9, v10}, Lcom/zeusis/widget/dialog/BaseDialog;->dpToPx(Landroid/content/Context;I)I

    move-result v9

    add-int v0, v6, v9

    .line 1772
    iget-object v9, p0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    iget v9, v9, Lcom/zeusis/widget/dialog/BaseDialog;->mActionMinWidth:I

    if-ge v0, v9, :cond_0

    .line 1773
    iget-object v9, p0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    iget v0, v9, Lcom/zeusis/widget/dialog/BaseDialog;->mActionMinWidth:I

    .line 1775
    :cond_0
    iget-object v9, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const/16 v10, 0x16

    invoke-static {v9, v10}, Lcom/zeusis/widget/dialog/BaseDialog;->dpToPx(Landroid/content/Context;I)I

    move-result v9

    add-int v2, v5, v9

    .line 1776
    .local v2, "expectedActionHeight":I
    iget-object v9, p0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    iget v9, v9, Lcom/zeusis/widget/dialog/BaseDialog;->mActionHeight:I

    if-ge v9, v2, :cond_1

    .line 1777
    iget-object v9, p0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    iput v2, v9, Lcom/zeusis/widget/dialog/BaseDialog;->mActionHeight:I

    .line 1778
    iget-object v9, p0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    iget-object v10, p0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    iget v10, v10, Lcom/zeusis/widget/dialog/BaseDialog;->mActionHeight:I

    iget-object v11, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const/16 v12, 0x10

    invoke-static {v11, v12}, Lcom/zeusis/widget/dialog/BaseDialog;->dpToPx(Landroid/content/Context;I)I

    move-result v11

    add-int/2addr v10, v11

    iput v10, v9, Lcom/zeusis/widget/dialog/BaseDialog;->mActionOuterHeight:I

    .line 1780
    :cond_1
    iget v9, p0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->mScreenWidth:I

    iget v10, p0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->mDialogPadding:F

    const/high16 v11, 0x40000000    # 2.0f

    mul-float/2addr v10, v11

    float-to-int v10, v10

    sub-int/2addr v9, v10

    iget-object v10, p0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    iget v10, v10, Lcom/zeusis/widget/dialog/BaseDialog;->mActionOuterPadding:I

    mul-int/lit8 v10, v10, 0x2

    sub-int v1, v9, v10

    .line 1781
    .local v1, "buttonMaxWidth":I
    if-le v0, v1, :cond_2

    .line 1782
    move v0, v1

    .line 1783
    invoke-virtual {p1}, Landroid/widget/TextView;->setSingleLine()V

    .line 1785
    const-string/jumbo v9, "END"

    invoke-static {v9}, Landroid/text/TextUtils$TruncateAt;->valueOf(Ljava/lang/String;)Landroid/text/TextUtils$TruncateAt;

    move-result-object v9

    invoke-virtual {p1, v9}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1787
    :cond_2
    invoke-static {v0, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 1788
    .local v8, "widthMs":I
    iget-object v9, p0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    iget v9, v9, Lcom/zeusis/widget/dialog/BaseDialog;->mActionHeight:I

    invoke-static {v9, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 1789
    .local v3, "heightMs":I
    invoke-virtual {p1, v8, v3}, Landroid/view/View;->measure(II)V

    .line 1791
    return v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 2067
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 2069
    iget-boolean v0, p0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->mShowTitleDivider:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    iget-object v0, v0, Lcom/zeusis/widget/dialog/BaseDialog;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2070
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    int-to-float v1, v0

    iget v2, p0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->mTitieDividerPos:F

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    sub-int/2addr v0, v3

    int-to-float v3, v0

    iget v0, p0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->mTitieDividerPos:F

    iget-object v4, p0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->mDividerPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v4

    add-float/2addr v4, v0

    iget-object v5, p0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->mDividerPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 2073
    :cond_0
    iget-boolean v0, p0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->mShowDivider:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    iget-object v0, v0, Lcom/zeusis/widget/dialog/BaseDialog;->mPositiveAction:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    iget-object v0, v0, Lcom/zeusis/widget/dialog/BaseDialog;->mNegativeAction:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 2074
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    int-to-float v1, v0

    iget v2, p0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->mDividerPos:F

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    sub-int/2addr v0, v3

    int-to-float v3, v0

    iget v0, p0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->mDividerPos:F

    iget-object v4, p0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->mDividerPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v4

    add-float/2addr v4, v0

    iget-object v5, p0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->mDividerPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 2066
    :cond_2
    return-void

    .line 2073
    :cond_3
    iget-object v0, p0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    iget-object v0, v0, Lcom/zeusis/widget/dialog/BaseDialog;->mNeutralAction:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 18
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 1962
    sub-int v7, p4, p2

    .line 1963
    .local v7, "childRight":I
    sub-int v5, p5, p3

    .line 1965
    .local v5, "childBottom":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v12

    add-int/lit8 v6, v12, 0x0

    .line 1966
    .local v6, "childLeft":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v12

    add-int/lit8 v8, v12, 0x0

    .line 1967
    .local v8, "childTop":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v12

    sub-int/2addr v7, v12

    .line 1968
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v12

    sub-int/2addr v5, v12

    .line 1970
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    iget-object v12, v12, Lcom/zeusis/widget/dialog/BaseDialog;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v12

    if-nez v12, :cond_0

    .line 1971
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->mIsRtl:Z

    if-eqz v12, :cond_8

    .line 1972
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    iget-object v12, v12, Lcom/zeusis/widget/dialog/BaseDialog;->mTitle:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    iget-object v13, v13, Lcom/zeusis/widget/dialog/BaseDialog;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    sub-int v13, v7, v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->mTitleMarginLeft:I

    sub-int/2addr v13, v14

    .line 1973
    move-object/from16 v0, p0

    iget v14, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->mTitleMarginTop:I

    add-int/2addr v14, v8

    move-object/from16 v0, p0

    iget v15, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->mTitleMarginLeft:I

    sub-int v15, v7, v15

    .line 1974
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/zeusis/widget/dialog/BaseDialog;->mTitle:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    add-int v16, v16, v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->mTitleMarginTop:I

    move/from16 v17, v0

    add-int v16, v16, v17

    .line 1972
    invoke-virtual/range {v12 .. v16}, Landroid/view/View;->layout(IIII)V

    .line 1979
    :goto_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    iget-object v12, v12, Lcom/zeusis/widget/dialog/BaseDialog;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->mTitleMarginTop:I

    add-int/2addr v12, v13

    add-int/2addr v8, v12

    .line 1982
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    invoke-static {v12}, Lcom/zeusis/widget/dialog/BaseDialog;->-get0(Lcom/zeusis/widget/dialog/BaseDialog;)Landroid/widget/ImageView;

    move-result-object v12

    if-eqz v12, :cond_9

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    invoke-static {v12}, Lcom/zeusis/widget/dialog/BaseDialog;->-get0(Lcom/zeusis/widget/dialog/BaseDialog;)Landroid/widget/ImageView;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    if-eqz v12, :cond_9

    const/4 v10, 0x1

    .line 1984
    .local v10, "hasIcon":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    iget-object v12, v12, Lcom/zeusis/widget/dialog/BaseDialog;->mNeutralAction:Landroid/widget/Button;

    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v12

    if-eqz v12, :cond_1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    iget-object v12, v12, Lcom/zeusis/widget/dialog/BaseDialog;->mNegativeAction:Landroid/widget/Button;

    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v12

    if-nez v12, :cond_a

    :cond_1
    const/4 v9, 0x1

    .line 1988
    .local v9, "hasAction":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    iget v12, v12, Lcom/zeusis/widget/dialog/BaseDialog;->mActionOuterHeight:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    iget v13, v13, Lcom/zeusis/widget/dialog/BaseDialog;->mActionHeight:I

    sub-int/2addr v12, v13

    div-int/lit8 v11, v12, 0x2

    .line 1990
    .local v11, "temp":I
    if-eqz v9, :cond_5

    .line 1991
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    invoke-static {v12}, Lcom/zeusis/widget/dialog/BaseDialog;->-get11(Lcom/zeusis/widget/dialog/BaseDialog;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 1992
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    iget-object v12, v12, Lcom/zeusis/widget/dialog/BaseDialog;->mNeutralAction:Landroid/widget/Button;

    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v12

    if-nez v12, :cond_2

    .line 1993
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    iget-object v12, v12, Lcom/zeusis/widget/dialog/BaseDialog;->mNeutralAction:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    iget v13, v13, Lcom/zeusis/widget/dialog/BaseDialog;->mActionOuterPadding:I

    sub-int v13, v7, v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    iget-object v14, v14, Lcom/zeusis/widget/dialog/BaseDialog;->mNeutralAction:Landroid/widget/Button;

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    sub-int/2addr v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    iget v14, v14, Lcom/zeusis/widget/dialog/BaseDialog;->mActionOuterHeight:I

    sub-int v14, v5, v14

    add-int/2addr v14, v11

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    iget v15, v15, Lcom/zeusis/widget/dialog/BaseDialog;->mActionOuterPadding:I

    sub-int v15, v7, v15

    sub-int v16, v5, v11

    invoke-virtual/range {v12 .. v16}, Landroid/view/View;->layout(IIII)V

    .line 1994
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    iget v12, v12, Lcom/zeusis/widget/dialog/BaseDialog;->mActionOuterHeight:I

    sub-int/2addr v5, v12

    .line 1997
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    iget-object v12, v12, Lcom/zeusis/widget/dialog/BaseDialog;->mNegativeAction:Landroid/widget/Button;

    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v12

    if-nez v12, :cond_3

    .line 1998
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    iget-object v12, v12, Lcom/zeusis/widget/dialog/BaseDialog;->mNegativeAction:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    iget v13, v13, Lcom/zeusis/widget/dialog/BaseDialog;->mActionOuterPadding:I

    sub-int v13, v7, v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    iget-object v14, v14, Lcom/zeusis/widget/dialog/BaseDialog;->mNegativeAction:Landroid/widget/Button;

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    sub-int/2addr v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    iget v14, v14, Lcom/zeusis/widget/dialog/BaseDialog;->mActionOuterHeight:I

    sub-int v14, v5, v14

    add-int/2addr v14, v11

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    iget v15, v15, Lcom/zeusis/widget/dialog/BaseDialog;->mActionOuterPadding:I

    sub-int v15, v7, v15

    sub-int v16, v5, v11

    invoke-virtual/range {v12 .. v16}, Landroid/view/View;->layout(IIII)V

    .line 1999
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    iget v12, v12, Lcom/zeusis/widget/dialog/BaseDialog;->mActionOuterHeight:I

    sub-int/2addr v5, v12

    .line 2002
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    iget-object v12, v12, Lcom/zeusis/widget/dialog/BaseDialog;->mPositiveAction:Landroid/widget/Button;

    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v12

    if-nez v12, :cond_4

    .line 2003
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    iget-object v12, v12, Lcom/zeusis/widget/dialog/BaseDialog;->mPositiveAction:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    iget v13, v13, Lcom/zeusis/widget/dialog/BaseDialog;->mActionOuterPadding:I

    sub-int v13, v7, v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    iget-object v14, v14, Lcom/zeusis/widget/dialog/BaseDialog;->mPositiveAction:Landroid/widget/Button;

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    sub-int/2addr v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    iget v14, v14, Lcom/zeusis/widget/dialog/BaseDialog;->mActionOuterHeight:I

    sub-int v14, v5, v14

    add-int/2addr v14, v11

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    iget v15, v15, Lcom/zeusis/widget/dialog/BaseDialog;->mActionOuterPadding:I

    sub-int v15, v7, v15

    sub-int v16, v5, v11

    invoke-virtual/range {v12 .. v16}, Landroid/view/View;->layout(IIII)V

    .line 2004
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    iget v12, v12, Lcom/zeusis/widget/dialog/BaseDialog;->mActionOuterHeight:I

    sub-int/2addr v5, v12

    .line 2040
    :cond_4
    :goto_3
    move-object/from16 v0, p0

    iget v12, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->mActionMarginTop:I

    sub-int/2addr v5, v12

    .line 2043
    :cond_5
    int-to-float v12, v8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->mDividerPaint:Landroid/graphics/Paint;

    invoke-virtual {v13}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v13

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->mTitieDividerPos:F

    .line 2045
    int-to-float v12, v5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->mDividerPaint:Landroid/graphics/Paint;

    invoke-virtual {v13}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v13

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->mDividerPos:F

    .line 2047
    if-eqz v10, :cond_6

    .line 2048
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    invoke-static {v12}, Lcom/zeusis/widget/dialog/BaseDialog;->-get0(Lcom/zeusis/widget/dialog/BaseDialog;)Landroid/widget/ImageView;

    move-result-object v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->mIconMarginLeft:I

    add-int/2addr v13, v6

    move-object/from16 v0, p0

    iget v14, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->mIconMarginTop:I

    add-int/2addr v14, v8

    move-object/from16 v0, p0

    iget v15, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->mTitleMarginBottom:I

    add-int/2addr v14, v15

    .line 2049
    move-object/from16 v0, p0

    iget v15, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->mIconMarginLeft:I

    add-int/2addr v15, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/zeusis/widget/dialog/BaseDialog;->-get0(Lcom/zeusis/widget/dialog/BaseDialog;)Landroid/widget/ImageView;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    add-int v15, v15, v16

    .line 2050
    move-object/from16 v0, p0

    iget v0, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->mIconMarginTop:I

    move/from16 v16, v0

    add-int v16, v16, v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->mTitleMarginBottom:I

    move/from16 v17, v0

    add-int v16, v16, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/zeusis/widget/dialog/BaseDialog;->-get0(Lcom/zeusis/widget/dialog/BaseDialog;)Landroid/widget/ImageView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    add-int v16, v16, v17

    .line 2048
    invoke-virtual/range {v12 .. v16}, Landroid/view/View;->layout(IIII)V

    .line 2053
    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    invoke-static {v12}, Lcom/zeusis/widget/dialog/BaseDialog;->-get8(Lcom/zeusis/widget/dialog/BaseDialog;)Landroid/view/View;

    move-result-object v12

    if-eqz v12, :cond_7

    .line 2054
    if-nez v10, :cond_12

    .line 2055
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    invoke-static {v12}, Lcom/zeusis/widget/dialog/BaseDialog;->-get8(Lcom/zeusis/widget/dialog/BaseDialog;)Landroid/view/View;

    move-result-object v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->mContentMarginLeft:I

    add-int/2addr v13, v6

    move-object/from16 v0, p0

    iget v14, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->mContentMarginTop:I

    add-int/2addr v14, v8

    move-object/from16 v0, p0

    iget v15, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->mTitleMarginBottom:I

    add-int/2addr v14, v15

    .line 2056
    move-object/from16 v0, p0

    iget v15, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->mContentMarginRight:I

    sub-int v15, v7, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->mContentMarginBottom:I

    move/from16 v16, v0

    sub-int v16, v5, v16

    .line 2055
    invoke-virtual/range {v12 .. v16}, Landroid/view/View;->layout(IIII)V

    .line 2061
    :goto_4
    move-object/from16 v0, p0

    iget v12, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->mContentMarginTop:I

    add-int/2addr v12, v8

    move-object/from16 v0, p0

    iget v13, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->mTitleMarginBottom:I

    add-int/2addr v12, v13

    int-to-float v12, v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->mDividerPaint:Landroid/graphics/Paint;

    invoke-virtual {v13}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v13

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->mTitieDividerPos:F

    .line 1959
    :cond_7
    return-void

    .line 1976
    .end local v9    # "hasAction":Z
    .end local v10    # "hasIcon":Z
    .end local v11    # "temp":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    iget-object v12, v12, Lcom/zeusis/widget/dialog/BaseDialog;->mTitle:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->mTitleMarginLeft:I

    add-int/2addr v13, v6

    move-object/from16 v0, p0

    iget v14, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->mTitleMarginTop:I

    add-int/2addr v14, v8

    .line 1977
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    iget-object v15, v15, Lcom/zeusis/widget/dialog/BaseDialog;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    add-int/2addr v15, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->mTitleMarginLeft:I

    move/from16 v16, v0

    add-int v15, v15, v16

    .line 1978
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/zeusis/widget/dialog/BaseDialog;->mTitle:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    add-int v16, v16, v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->mTitleMarginTop:I

    move/from16 v17, v0

    add-int v16, v16, v17

    .line 1976
    invoke-virtual/range {v12 .. v16}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_0

    .line 1982
    :cond_9
    const/4 v10, 0x0

    .restart local v10    # "hasIcon":Z
    goto/16 :goto_1

    .line 1984
    :cond_a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    iget-object v12, v12, Lcom/zeusis/widget/dialog/BaseDialog;->mPositiveAction:Landroid/widget/Button;

    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v12

    if-eqz v12, :cond_1

    const/4 v9, 0x0

    .restart local v9    # "hasAction":Z
    goto/16 :goto_2

    .line 2007
    .restart local v11    # "temp":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    iget v12, v12, Lcom/zeusis/widget/dialog/BaseDialog;->mActionOuterPadding:I

    add-int v2, v6, v12

    .line 2008
    .local v2, "actionLeft":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    iget v12, v12, Lcom/zeusis/widget/dialog/BaseDialog;->mActionOuterPadding:I

    sub-int v3, v7, v12

    .line 2009
    .local v3, "actionRight":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    iget v12, v12, Lcom/zeusis/widget/dialog/BaseDialog;->mActionOuterHeight:I

    sub-int v12, v5, v12

    add-int v4, v12, v11

    .line 2010
    .local v4, "actionTop":I
    sub-int v1, v5, v11

    .line 2012
    .local v1, "actionBottom":I
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->mIsRtl:Z

    if-eqz v12, :cond_f

    .line 2013
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    iget-object v12, v12, Lcom/zeusis/widget/dialog/BaseDialog;->mPositiveAction:Landroid/widget/Button;

    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v12

    if-nez v12, :cond_c

    .line 2014
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    iget-object v12, v12, Lcom/zeusis/widget/dialog/BaseDialog;->mPositiveAction:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    iget-object v13, v13, Lcom/zeusis/widget/dialog/BaseDialog;->mPositiveAction:Landroid/widget/Button;

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    add-int/2addr v13, v2

    invoke-virtual {v12, v2, v4, v13, v1}, Landroid/view/View;->layout(IIII)V

    .line 2015
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    iget-object v12, v12, Lcom/zeusis/widget/dialog/BaseDialog;->mPositiveAction:Landroid/widget/Button;

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    iget v13, v13, Lcom/zeusis/widget/dialog/BaseDialog;->mActionPadding:I

    add-int/2addr v12, v13

    add-int/2addr v2, v12

    .line 2018
    :cond_c
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    iget-object v12, v12, Lcom/zeusis/widget/dialog/BaseDialog;->mNegativeAction:Landroid/widget/Button;

    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v12

    if-nez v12, :cond_d

    .line 2019
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    iget-object v12, v12, Lcom/zeusis/widget/dialog/BaseDialog;->mNegativeAction:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    iget-object v13, v13, Lcom/zeusis/widget/dialog/BaseDialog;->mNegativeAction:Landroid/widget/Button;

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    add-int/2addr v13, v2

    invoke-virtual {v12, v2, v4, v13, v1}, Landroid/view/View;->layout(IIII)V

    .line 2022
    :cond_d
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    iget-object v12, v12, Lcom/zeusis/widget/dialog/BaseDialog;->mNeutralAction:Landroid/widget/Button;

    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v12

    if-nez v12, :cond_e

    .line 2023
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    iget-object v12, v12, Lcom/zeusis/widget/dialog/BaseDialog;->mNeutralAction:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    iget-object v13, v13, Lcom/zeusis/widget/dialog/BaseDialog;->mNeutralAction:Landroid/widget/Button;

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    sub-int v13, v3, v13

    invoke-virtual {v12, v13, v4, v3, v1}, Landroid/view/View;->layout(IIII)V

    .line 2038
    :cond_e
    :goto_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    iget v12, v12, Lcom/zeusis/widget/dialog/BaseDialog;->mActionOuterHeight:I

    sub-int/2addr v5, v12

    goto/16 :goto_3

    .line 2026
    :cond_f
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    iget-object v12, v12, Lcom/zeusis/widget/dialog/BaseDialog;->mPositiveAction:Landroid/widget/Button;

    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v12

    if-nez v12, :cond_10

    .line 2027
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    iget-object v12, v12, Lcom/zeusis/widget/dialog/BaseDialog;->mPositiveAction:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    iget-object v13, v13, Lcom/zeusis/widget/dialog/BaseDialog;->mPositiveAction:Landroid/widget/Button;

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    sub-int v13, v3, v13

    invoke-virtual {v12, v13, v4, v3, v1}, Landroid/view/View;->layout(IIII)V

    .line 2028
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    iget-object v12, v12, Lcom/zeusis/widget/dialog/BaseDialog;->mPositiveAction:Landroid/widget/Button;

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    iget v13, v13, Lcom/zeusis/widget/dialog/BaseDialog;->mActionPadding:I

    add-int/2addr v12, v13

    sub-int/2addr v3, v12

    .line 2031
    :cond_10
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    iget-object v12, v12, Lcom/zeusis/widget/dialog/BaseDialog;->mNegativeAction:Landroid/widget/Button;

    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v12

    if-nez v12, :cond_11

    .line 2032
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    iget-object v12, v12, Lcom/zeusis/widget/dialog/BaseDialog;->mNegativeAction:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    iget-object v13, v13, Lcom/zeusis/widget/dialog/BaseDialog;->mNegativeAction:Landroid/widget/Button;

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    sub-int v13, v3, v13

    invoke-virtual {v12, v13, v4, v3, v1}, Landroid/view/View;->layout(IIII)V

    .line 2034
    :cond_11
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    iget-object v12, v12, Lcom/zeusis/widget/dialog/BaseDialog;->mNeutralAction:Landroid/widget/Button;

    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v12

    if-nez v12, :cond_e

    .line 2035
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    iget-object v12, v12, Lcom/zeusis/widget/dialog/BaseDialog;->mNeutralAction:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    iget-object v13, v13, Lcom/zeusis/widget/dialog/BaseDialog;->mNeutralAction:Landroid/widget/Button;

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    add-int/2addr v13, v2

    invoke-virtual {v12, v2, v4, v13, v1}, Landroid/view/View;->layout(IIII)V

    goto :goto_5

    .line 2058
    .end local v1    # "actionBottom":I
    .end local v2    # "actionLeft":I
    .end local v3    # "actionRight":I
    .end local v4    # "actionTop":I
    :cond_12
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    invoke-static {v12}, Lcom/zeusis/widget/dialog/BaseDialog;->-get8(Lcom/zeusis/widget/dialog/BaseDialog;)Landroid/view/View;

    move-result-object v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->mIconMarginLeft:I

    add-int/2addr v13, v6

    move-object/from16 v0, p0

    iget v14, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->mIconMarginRight:I

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    invoke-static {v14}, Lcom/zeusis/widget/dialog/BaseDialog;->-get0(Lcom/zeusis/widget/dialog/BaseDialog;)Landroid/widget/ImageView;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    add-int/2addr v13, v14

    .line 2059
    move-object/from16 v0, p0

    iget v14, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->mContentMarginTop:I

    add-int/2addr v14, v8

    move-object/from16 v0, p0

    iget v15, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->mTitleMarginBottom:I

    add-int/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->mContentMarginRight:I

    sub-int v15, v7, v15

    .line 2060
    move-object/from16 v0, p0

    iget v0, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->mContentMarginBottom:I

    move/from16 v16, v0

    sub-int v16, v5, v16

    .line 2058
    invoke-virtual/range {v12 .. v16}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_4
.end method

.method protected onMeasure(II)V
    .locals 35
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 1796
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v30

    .line 1797
    .local v30, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    .line 1799
    .local v9, "heightSize":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v31

    move-object/from16 v0, v31

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v31, v0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->mScreenWidth:I

    .line 1801
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lcom/zeusis/widget/dialog/BaseDialog;->mDialogHorizontalPadding:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/zeusis/widget/dialog/BaseDialog;->-get6(Lcom/zeusis/widget/dialog/BaseDialog;)Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getPaddingLeft()I

    move-result v32

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->max(II)I

    move-result v19

    .line 1802
    .local v19, "paddingLeft":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lcom/zeusis/widget/dialog/BaseDialog;->mDialogHorizontalPadding:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/zeusis/widget/dialog/BaseDialog;->-get6(Lcom/zeusis/widget/dialog/BaseDialog;)Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getPaddingRight()I

    move-result v32

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->max(II)I

    move-result v20

    .line 1803
    .local v20, "paddingRight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lcom/zeusis/widget/dialog/BaseDialog;->mDialogTopPadding:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/zeusis/widget/dialog/BaseDialog;->-get6(Lcom/zeusis/widget/dialog/BaseDialog;)Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getPaddingTop()I

    move-result v32

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->max(II)I

    move-result v21

    .line 1804
    .local v21, "paddingTop":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lcom/zeusis/widget/dialog/BaseDialog;->mDialogBottomPadding:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/zeusis/widget/dialog/BaseDialog;->-get6(Lcom/zeusis/widget/dialog/BaseDialog;)Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getPaddingBottom()I

    move-result v32

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->max(II)I

    move-result v18

    .line 1806
    .local v18, "paddingBottom":I
    sub-int v31, v30, v19

    sub-int v14, v31, v20

    .line 1807
    .local v14, "maxWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/zeusis/widget/dialog/BaseDialog;->-get15(Lcom/zeusis/widget/dialog/BaseDialog;)I

    move-result v31

    if-lez v31, :cond_0

    .line 1808
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/zeusis/widget/dialog/BaseDialog;->-get15(Lcom/zeusis/widget/dialog/BaseDialog;)I

    move-result v31

    move/from16 v0, v31

    invoke-static {v14, v0}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 1809
    :cond_0
    sub-int v31, v9, v21

    sub-int v13, v31, v18

    .line 1810
    .local v13, "maxHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/zeusis/widget/dialog/BaseDialog;->-get14(Lcom/zeusis/widget/dialog/BaseDialog;)I

    move-result v31

    if-lez v31, :cond_1

    .line 1811
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/zeusis/widget/dialog/BaseDialog;->-get14(Lcom/zeusis/widget/dialog/BaseDialog;)I

    move-result v31

    move/from16 v0, v31

    invoke-static {v13, v0}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 1813
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/zeusis/widget/dialog/BaseDialog;->-get13(Lcom/zeusis/widget/dialog/BaseDialog;)I

    move-result v31

    const/16 v32, -0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_c

    move/from16 v28, v14

    .line 1814
    .local v28, "width":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/zeusis/widget/dialog/BaseDialog;->-get12(Lcom/zeusis/widget/dialog/BaseDialog;)I

    move-result v31

    const/16 v32, -0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_d

    move v7, v13

    .line 1819
    .local v7, "height":I
    :goto_1
    const/16 v25, 0x0

    .line 1820
    .local v25, "titleWidth":I
    const/16 v24, 0x0

    .line 1821
    .local v24, "titleHeight":I
    const/16 v27, 0x0

    .line 1831
    .local v27, "visibleTitle":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/zeusis/widget/dialog/BaseDialog;->mTitle:Landroid/widget/TextView;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getVisibility()I

    move-result v31

    if-nez v31, :cond_2

    .line 1832
    const/16 v31, -0x2

    move/from16 v0, v28

    move/from16 v1, v31

    if-ne v0, v1, :cond_e

    move/from16 v31, v14

    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->mTitleMarginLeft:I

    move/from16 v32, v0

    sub-int v31, v31, v32

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->mTitleMarginRight:I

    move/from16 v32, v0

    sub-int v23, v31, v32

    .line 1833
    .local v23, "specWidth":I
    shl-int/lit8 v31, v23, 0x2

    ushr-int/lit8 v31, v31, 0x2

    const/high16 v32, -0x80000000

    invoke-static/range {v31 .. v32}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v29

    .line 1834
    .local v29, "widthMs":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->mTitleMarginTop:I

    move/from16 v31, v0

    sub-int v31, v13, v31

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->mTitleMarginBottom:I

    move/from16 v32, v0

    sub-int v31, v31, v32

    const/high16 v32, -0x80000000

    invoke-static/range {v31 .. v32}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 1835
    .local v8, "heightMs":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/zeusis/widget/dialog/BaseDialog;->mTitle:Landroid/widget/TextView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move/from16 v1, v29

    invoke-virtual {v0, v1, v8}, Landroid/view/View;->measure(II)V

    .line 1836
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/zeusis/widget/dialog/BaseDialog;->mTitle:Landroid/widget/TextView;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getMeasuredWidth()I

    move-result v25

    .line 1837
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/zeusis/widget/dialog/BaseDialog;->mTitle:Landroid/widget/TextView;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getMeasuredHeight()I

    move-result v24

    .line 1838
    const/16 v27, 0x1

    .line 1841
    .end local v8    # "heightMs":I
    .end local v23    # "specWidth":I
    .end local v29    # "widthMs":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    const/16 v32, 0x20

    invoke-static/range {v31 .. v32}, Lcom/zeusis/widget/dialog/BaseDialog;->dpToPx(Landroid/content/Context;I)I

    move-result v10

    .line 1842
    .local v10, "iconArea":I
    const/4 v12, 0x0

    .line 1843
    .local v12, "iconWidth":I
    const/4 v11, 0x0

    .line 1844
    .local v11, "iconHeight":I
    const/4 v6, 0x0

    .line 1845
    .local v6, "hasIcon":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/zeusis/widget/dialog/BaseDialog;->-get0(Lcom/zeusis/widget/dialog/BaseDialog;)Landroid/widget/ImageView;

    move-result-object v31

    if-eqz v31, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/zeusis/widget/dialog/BaseDialog;->-get0(Lcom/zeusis/widget/dialog/BaseDialog;)Landroid/widget/ImageView;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v31

    if-eqz v31, :cond_3

    .line 1846
    const/high16 v31, 0x40000000    # 2.0f

    move/from16 v0, v31

    invoke-static {v10, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v29

    .line 1847
    .restart local v29    # "widthMs":I
    const/high16 v31, 0x40000000    # 2.0f

    move/from16 v0, v31

    invoke-static {v10, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 1848
    .restart local v8    # "heightMs":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/zeusis/widget/dialog/BaseDialog;->-get0(Lcom/zeusis/widget/dialog/BaseDialog;)Landroid/widget/ImageView;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v29

    invoke-virtual {v0, v1, v8}, Landroid/view/View;->measure(II)V

    .line 1849
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/zeusis/widget/dialog/BaseDialog;->-get0(Lcom/zeusis/widget/dialog/BaseDialog;)Landroid/widget/ImageView;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getMeasuredWidth()I

    move-result v31

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->mIconMarginLeft:I

    move/from16 v32, v0

    add-int v31, v31, v32

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->mIconMarginRight:I

    move/from16 v32, v0

    add-int v12, v31, v32

    .line 1850
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/zeusis/widget/dialog/BaseDialog;->-get0(Lcom/zeusis/widget/dialog/BaseDialog;)Landroid/widget/ImageView;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getMeasuredHeight()I

    move-result v31

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->mIconMarginTop:I

    move/from16 v32, v0

    add-int v31, v31, v32

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->mIconMarginBottom:I

    move/from16 v32, v0

    add-int v11, v31, v32

    .line 1851
    const/4 v6, 0x1

    .line 1855
    .end local v8    # "heightMs":I
    .end local v29    # "widthMs":I
    :cond_3
    const/4 v5, 0x0

    .line 1856
    .local v5, "contentWidth":I
    const/4 v4, 0x0

    .line 1858
    .local v4, "contentHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/zeusis/widget/dialog/BaseDialog;->-get8(Lcom/zeusis/widget/dialog/BaseDialog;)Landroid/view/View;

    move-result-object v31

    if-eqz v31, :cond_4

    .line 1859
    if-nez v6, :cond_10

    .line 1860
    const/16 v31, -0x2

    move/from16 v0, v28

    move/from16 v1, v31

    if-ne v0, v1, :cond_f

    .line 1861
    .end local v14    # "maxWidth":I
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->mContentMarginLeft:I

    move/from16 v31, v0

    .line 1860
    sub-int v31, v14, v31

    .line 1861
    move-object/from16 v0, p0

    iget v0, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->mContentMarginRight:I

    move/from16 v32, v0

    .line 1860
    sub-int v31, v31, v32

    .line 1861
    const/high16 v32, -0x80000000

    .line 1860
    invoke-static/range {v31 .. v32}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v29

    .line 1865
    .restart local v29    # "widthMs":I
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->mContentMarginTop:I

    move/from16 v31, v0

    sub-int v31, v13, v31

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->mContentMarginBottom:I

    move/from16 v32, v0

    sub-int v31, v31, v32

    const/high16 v32, -0x80000000

    invoke-static/range {v31 .. v32}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 1866
    .restart local v8    # "heightMs":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/zeusis/widget/dialog/BaseDialog;->-get8(Lcom/zeusis/widget/dialog/BaseDialog;)Landroid/view/View;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v29

    invoke-virtual {v0, v1, v8}, Landroid/view/View;->measure(II)V

    .line 1867
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/zeusis/widget/dialog/BaseDialog;->-get8(Lcom/zeusis/widget/dialog/BaseDialog;)Landroid/view/View;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 1868
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/zeusis/widget/dialog/BaseDialog;->-get8(Lcom/zeusis/widget/dialog/BaseDialog;)Landroid/view/View;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getMeasuredHeight()I

    move-result v31

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->mContentMarginTop:I

    move/from16 v32, v0

    add-int v31, v31, v32

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->mContentMarginBottom:I

    move/from16 v32, v0

    add-int v4, v31, v32

    .line 1872
    .end local v8    # "heightMs":I
    .end local v29    # "widthMs":I
    :cond_4
    const/16 v26, 0x0

    .line 1873
    .local v26, "visibleActions":I
    const/16 v22, 0x0

    .line 1875
    .local v22, "positiveActionWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/zeusis/widget/dialog/BaseDialog;->mPositiveAction:Landroid/widget/Button;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getVisibility()I

    move-result v31

    if-nez v31, :cond_5

    .line 1886
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/zeusis/widget/dialog/BaseDialog;->mPositiveAction:Landroid/widget/Button;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->measureActionButton(Landroid/widget/Button;)I

    move-result v22

    .line 1888
    const/16 v26, 0x1

    .line 1891
    :cond_5
    const/4 v15, 0x0

    .line 1893
    .local v15, "negativeActionWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/zeusis/widget/dialog/BaseDialog;->mNegativeAction:Landroid/widget/Button;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getVisibility()I

    move-result v31

    if-nez v31, :cond_6

    .line 1904
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/zeusis/widget/dialog/BaseDialog;->mNegativeAction:Landroid/widget/Button;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->measureActionButton(Landroid/widget/Button;)I

    move-result v15

    .line 1906
    add-int/lit8 v26, v26, 0x1

    .line 1909
    :cond_6
    const/16 v16, 0x0

    .line 1911
    .local v16, "neutralActionWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/zeusis/widget/dialog/BaseDialog;->mNeutralAction:Landroid/widget/Button;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getVisibility()I

    move-result v31

    if-nez v31, :cond_7

    .line 1922
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/zeusis/widget/dialog/BaseDialog;->mNeutralAction:Landroid/widget/Button;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->measureActionButton(Landroid/widget/Button;)I

    move-result v16

    .line 1924
    add-int/lit8 v26, v26, 0x1

    .line 1927
    :cond_7
    add-int v31, v22, v15

    add-int v31, v31, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Lcom/zeusis/widget/dialog/BaseDialog;->mActionOuterPadding:I

    move/from16 v32, v0

    mul-int/lit8 v32, v32, 0x2

    add-int v31, v31, v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Lcom/zeusis/widget/dialog/BaseDialog;->mActionPadding:I

    move/from16 v32, v0

    add-int/lit8 v33, v26, -0x1

    const/16 v34, 0x0

    move/from16 v0, v34

    move/from16 v1, v33

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v33

    mul-int v32, v32, v33

    add-int v3, v31, v32

    .line 1929
    .local v3, "actionBarWidth":I
    const/16 v31, -0x2

    move/from16 v0, v28

    move/from16 v1, v31

    if-ne v0, v1, :cond_8

    .line 1931
    move-object/from16 v0, p0

    iget v0, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->mScreenWidth:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->mDialogPadding:F

    move/from16 v32, v0

    const/high16 v33, 0x40000000    # 2.0f

    mul-float v32, v32, v33

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v32, v0

    sub-int v28, v31, v32

    .line 1933
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/zeusis/widget/dialog/BaseDialog;->-get16(Lcom/zeusis/widget/dialog/BaseDialog;)Z

    move-result v31

    if-nez v31, :cond_9

    move/from16 v0, v28

    if-le v3, v0, :cond_12

    :cond_9
    const/16 v31, 0x1

    :goto_5
    move-object/from16 v0, v32

    move/from16 v1, v31

    invoke-static {v0, v1}, Lcom/zeusis/widget/dialog/BaseDialog;->-set1(Lcom/zeusis/widget/dialog/BaseDialog;Z)Z

    .line 1936
    if-eqz v27, :cond_13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->mTitleMarginTop:I

    move/from16 v31, v0

    add-int v31, v31, v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->mTitleMarginBottom:I

    move/from16 v32, v0

    add-int v31, v31, v32

    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->mActionMarginTop:I

    move/from16 v32, v0

    add-int v17, v31, v32

    .line 1938
    .local v17, "nonContentHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/zeusis/widget/dialog/BaseDialog;->-get11(Lcom/zeusis/widget/dialog/BaseDialog;)Z

    move-result v31

    if-eqz v31, :cond_14

    .line 1939
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lcom/zeusis/widget/dialog/BaseDialog;->mActionOuterHeight:I

    move/from16 v31, v0

    mul-int v31, v31, v26

    add-int v17, v17, v31

    .line 1943
    :goto_7
    const/16 v31, -0x2

    move/from16 v0, v31

    if-ne v7, v0, :cond_a

    .line 1944
    if-le v4, v11, :cond_16

    .end local v4    # "contentHeight":I
    :goto_8
    add-int v31, v4, v17

    move/from16 v0, v31

    invoke-static {v13, v0}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 1946
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/zeusis/widget/dialog/BaseDialog;->-get8(Lcom/zeusis/widget/dialog/BaseDialog;)Landroid/view/View;

    move-result-object v31

    if-eqz v31, :cond_b

    .line 1947
    if-nez v6, :cond_17

    .line 1948
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/zeusis/widget/dialog/BaseDialog;->-get8(Lcom/zeusis/widget/dialog/BaseDialog;)Landroid/view/View;

    move-result-object v31

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->mContentMarginLeft:I

    move/from16 v32, v0

    sub-int v32, v28, v32

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->mContentMarginRight:I

    move/from16 v33, v0

    sub-int v32, v32, v33

    const/high16 v33, 0x40000000    # 2.0f

    invoke-static/range {v32 .. v33}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v32

    .line 1949
    sub-int v33, v7, v17

    const/high16 v34, 0x40000000    # 2.0f

    invoke-static/range {v33 .. v34}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v33

    .line 1948
    invoke-virtual/range {v31 .. v33}, Landroid/view/View;->measure(II)V

    .line 1955
    :cond_b
    :goto_9
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v31

    add-int v31, v31, v7

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v32

    add-int v31, v31, v32

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 1795
    return-void

    .line 1813
    .end local v3    # "actionBarWidth":I
    .end local v5    # "contentWidth":I
    .end local v6    # "hasIcon":Z
    .end local v7    # "height":I
    .end local v10    # "iconArea":I
    .end local v11    # "iconHeight":I
    .end local v12    # "iconWidth":I
    .end local v15    # "negativeActionWidth":I
    .end local v16    # "neutralActionWidth":I
    .end local v17    # "nonContentHeight":I
    .end local v22    # "positiveActionWidth":I
    .end local v24    # "titleHeight":I
    .end local v25    # "titleWidth":I
    .end local v26    # "visibleActions":I
    .end local v27    # "visibleTitle":Z
    .end local v28    # "width":I
    .restart local v14    # "maxWidth":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/zeusis/widget/dialog/BaseDialog;->-get13(Lcom/zeusis/widget/dialog/BaseDialog;)I

    move-result v28

    .restart local v28    # "width":I
    goto/16 :goto_0

    .line 1814
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/zeusis/widget/dialog/BaseDialog;->-get12(Lcom/zeusis/widget/dialog/BaseDialog;)I

    move-result v7

    .restart local v7    # "height":I
    goto/16 :goto_1

    .restart local v24    # "titleHeight":I
    .restart local v25    # "titleWidth":I
    .restart local v27    # "visibleTitle":Z
    :cond_e
    move/from16 v31, v28

    .line 1832
    goto/16 :goto_2

    .restart local v4    # "contentHeight":I
    .restart local v5    # "contentWidth":I
    .restart local v6    # "hasIcon":Z
    .restart local v10    # "iconArea":I
    .restart local v11    # "iconHeight":I
    .restart local v12    # "iconWidth":I
    :cond_f
    move/from16 v14, v28

    .line 1860
    goto/16 :goto_3

    .line 1863
    :cond_10
    const/16 v31, -0x2

    move/from16 v0, v28

    move/from16 v1, v31

    if-ne v0, v1, :cond_11

    .end local v14    # "maxWidth":I
    :goto_a
    sub-int v31, v14, v12

    .line 1864
    move-object/from16 v0, p0

    iget v0, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->mContentMarginRight:I

    move/from16 v32, v0

    .line 1863
    sub-int v31, v31, v32

    .line 1864
    const/high16 v32, -0x80000000

    .line 1863
    invoke-static/range {v31 .. v32}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v29

    .restart local v29    # "widthMs":I
    goto/16 :goto_4

    .end local v29    # "widthMs":I
    .restart local v14    # "maxWidth":I
    :cond_11
    move/from16 v14, v28

    goto :goto_a

    .line 1933
    .end local v14    # "maxWidth":I
    .restart local v3    # "actionBarWidth":I
    .restart local v15    # "negativeActionWidth":I
    .restart local v16    # "neutralActionWidth":I
    .restart local v22    # "positiveActionWidth":I
    .restart local v26    # "visibleActions":I
    :cond_12
    const/16 v31, 0x0

    goto/16 :goto_5

    .line 1936
    :cond_13
    const/16 v31, 0x0

    goto/16 :goto_6

    .line 1941
    .restart local v17    # "nonContentHeight":I
    :cond_14
    if-lez v26, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lcom/zeusis/widget/dialog/BaseDialog;->mActionOuterHeight:I

    move/from16 v31, v0

    :goto_b
    add-int v17, v17, v31

    goto/16 :goto_7

    :cond_15
    const/16 v31, 0x0

    goto :goto_b

    :cond_16
    move v4, v11

    .line 1944
    goto/16 :goto_8

    .line 1951
    .end local v4    # "contentHeight":I
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/zeusis/widget/dialog/BaseDialog;->-get8(Lcom/zeusis/widget/dialog/BaseDialog;)Landroid/view/View;

    move-result-object v31

    sub-int v32, v28, v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->mContentMarginRight:I

    move/from16 v33, v0

    sub-int v32, v32, v33

    const/high16 v33, 0x40000000    # 2.0f

    invoke-static/range {v32 .. v33}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v32

    .line 1952
    sub-int v33, v7, v17

    const/high16 v34, 0x40000000    # 2.0f

    invoke-static/range {v33 .. v34}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v33

    .line 1951
    invoke-virtual/range {v31 .. v33}, Landroid/view/View;->measure(II)V

    goto/16 :goto_9
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 4
    .param p1, "layoutDirection"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    .line 1746
    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    const/4 v1, 0x1

    .line 1747
    .local v1, "rtl":Z
    :goto_0
    iget-boolean v2, p0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->mIsRtl:Z

    if-eq v2, v1, :cond_1

    .line 1748
    iput-boolean v1, p0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->mIsRtl:Z

    .line 1750
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_0

    .line 1751
    iget-boolean v2, p0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->mIsRtl:Z

    if-eqz v2, :cond_3

    const/4 v0, 0x4

    .line 1753
    .local v0, "direction":I
    :goto_1
    iget-object v2, p0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    iget-object v2, v2, Lcom/zeusis/widget/dialog/BaseDialog;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/view/View;->setTextDirection(I)V

    .line 1754
    iget-object v2, p0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    iget-object v2, v2, Lcom/zeusis/widget/dialog/BaseDialog;->mPositiveAction:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/view/View;->setTextDirection(I)V

    .line 1755
    iget-object v2, p0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    iget-object v2, v2, Lcom/zeusis/widget/dialog/BaseDialog;->mNegativeAction:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/view/View;->setTextDirection(I)V

    .line 1756
    iget-object v2, p0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    iget-object v2, v2, Lcom/zeusis/widget/dialog/BaseDialog;->mNeutralAction:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/view/View;->setTextDirection(I)V

    .line 1759
    .end local v0    # "direction":I
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 1745
    :cond_1
    return-void

    .line 1746
    .end local v1    # "rtl":Z
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "rtl":Z
    goto :goto_0

    .line 1751
    :cond_3
    const/4 v0, 0x3

    .restart local v0    # "direction":I
    goto :goto_1
.end method

.method public resetContentMarginTop(I)V
    .locals 0
    .param p1, "top"    # I

    .prologue
    .line 1712
    iput p1, p0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->mContentMarginTop:I

    .line 1711
    return-void
.end method

.method public resetTitleMarginBottom(I)V
    .locals 0
    .param p1, "bottom"    # I

    .prologue
    .line 1708
    iput p1, p0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->mTitleMarginBottom:I

    .line 1707
    return-void
.end method

.method public setActionMarginTop(I)V
    .locals 0
    .param p1, "top"    # I

    .prologue
    .line 1716
    iput p1, p0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->mActionMarginTop:I

    .line 1715
    return-void
.end method

.method public setContentMargin(I)V
    .locals 0
    .param p1, "margin"    # I

    .prologue
    .line 1683
    invoke-virtual {p0, p1, p1, p1, p1}, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->setContentMargin(IIII)V

    .line 1682
    return-void
.end method

.method public setContentMargin(IIII)V
    .locals 0
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 1687
    iput p1, p0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->mContentMarginLeft:I

    .line 1688
    iput p2, p0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->mContentMarginTop:I

    .line 1689
    iput p3, p0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->mContentMarginRight:I

    .line 1690
    iput p4, p0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->mContentMarginBottom:I

    .line 1686
    return-void
.end method

.method public setDividerColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 1720
    iget-object v0, p0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->mDividerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1721
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 1719
    return-void
.end method

.method public setDividerHeight(I)V
    .locals 2
    .param p1, "height"    # I

    .prologue
    .line 1725
    iget-object v0, p0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->mDividerPaint:Landroid/graphics/Paint;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1726
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 1724
    return-void
.end method

.method public setIconMargin(IIII)V
    .locals 0
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 1701
    iput p1, p0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->mIconMarginLeft:I

    .line 1702
    iput p2, p0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->mIconMarginTop:I

    .line 1703
    iput p3, p0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->mIconMarginRight:I

    .line 1704
    iput p4, p0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->mIconMarginBottom:I

    .line 1700
    return-void
.end method

.method public setShowDivider(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 1730
    iget-boolean v0, p0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->mShowDivider:Z

    if-eq v0, p1, :cond_0

    .line 1731
    iput-boolean p1, p0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->mShowDivider:Z

    .line 1732
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 1729
    :cond_0
    return-void
.end method

.method public setShowTitleDivider(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 1737
    iget-boolean v0, p0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->mShowTitleDivider:Z

    if-eq v0, p1, :cond_0

    .line 1738
    iput-boolean p1, p0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->mShowTitleDivider:Z

    .line 1739
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 1736
    :cond_0
    return-void
.end method

.method public setTitleMargin(IIII)V
    .locals 0
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 1694
    iput p1, p0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->mTitleMarginLeft:I

    .line 1695
    iput p2, p0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->mTitleMarginTop:I

    .line 1696
    iput p3, p0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->mTitleMarginRight:I

    .line 1697
    iput p4, p0, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->mTitleMarginBottom:I

    .line 1693
    return-void
.end method

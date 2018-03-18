.class public Landroid/widget/BubbleTextView;
.super Landroid/widget/TextView;
.source "BubbleTextView.java"

# interfaces
.implements Landroid/widget/BubbleStyle;
.implements Landroid/widget/BubbleCallback;


# instance fields
.field private mBubbleImpl:Landroid/widget/BubbleImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 22
    new-instance v0, Landroid/widget/BubbleImpl;

    invoke-direct {v0}, Landroid/widget/BubbleImpl;-><init>()V

    iput-object v0, p0, Landroid/widget/BubbleTextView;->mBubbleImpl:Landroid/widget/BubbleImpl;

    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/BubbleTextView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    new-instance v0, Landroid/widget/BubbleImpl;

    invoke-direct {v0}, Landroid/widget/BubbleImpl;-><init>()V

    iput-object v0, p0, Landroid/widget/BubbleTextView;->mBubbleImpl:Landroid/widget/BubbleImpl;

    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/BubbleTextView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    new-instance v0, Landroid/widget/BubbleImpl;

    invoke-direct {v0}, Landroid/widget/BubbleImpl;-><init>()V

    iput-object v0, p0, Landroid/widget/BubbleTextView;->mBubbleImpl:Landroid/widget/BubbleImpl;

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/BubbleTextView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 22
    new-instance v0, Landroid/widget/BubbleImpl;

    invoke-direct {v0}, Landroid/widget/BubbleImpl;-><init>()V

    iput-object v0, p0, Landroid/widget/BubbleTextView;->mBubbleImpl:Landroid/widget/BubbleImpl;

    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/BubbleTextView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 47
    iget-object v0, p0, Landroid/widget/BubbleTextView;->mBubbleImpl:Landroid/widget/BubbleImpl;

    invoke-virtual {v0, p0, p1, p2}, Landroid/widget/BubbleImpl;->init(Landroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    return-void
.end method


# virtual methods
.method public getArrowDirection()Landroid/widget/BubbleStyle$ArrowDirection;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Landroid/widget/BubbleTextView;->mBubbleImpl:Landroid/widget/BubbleImpl;

    invoke-virtual {v0}, Landroid/widget/BubbleImpl;->getArrowDirection()Landroid/widget/BubbleStyle$ArrowDirection;

    move-result-object v0

    return-object v0
.end method

.method public getArrowHeight()F
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Landroid/widget/BubbleTextView;->mBubbleImpl:Landroid/widget/BubbleImpl;

    invoke-virtual {v0}, Landroid/widget/BubbleImpl;->getArrowHeight()F

    move-result v0

    return v0
.end method

.method public getArrowPosDelta()F
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Landroid/widget/BubbleTextView;->mBubbleImpl:Landroid/widget/BubbleImpl;

    invoke-virtual {v0}, Landroid/widget/BubbleImpl;->getArrowPosDelta()F

    move-result v0

    return v0
.end method

.method public getArrowPosPolicy()Landroid/widget/BubbleStyle$ArrowPosPolicy;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Landroid/widget/BubbleTextView;->mBubbleImpl:Landroid/widget/BubbleImpl;

    invoke-virtual {v0}, Landroid/widget/BubbleImpl;->getArrowPosPolicy()Landroid/widget/BubbleStyle$ArrowPosPolicy;

    move-result-object v0

    return-object v0
.end method

.method public getArrowTo()Landroid/view/View;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Landroid/widget/BubbleTextView;->mBubbleImpl:Landroid/widget/BubbleImpl;

    invoke-virtual {v0}, Landroid/widget/BubbleImpl;->getArrowTo()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getArrowWidth()F
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Landroid/widget/BubbleTextView;->mBubbleImpl:Landroid/widget/BubbleImpl;

    invoke-virtual {v0}, Landroid/widget/BubbleImpl;->getArrowWidth()F

    move-result v0

    return v0
.end method

.method public getBorderColor()I
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Landroid/widget/BubbleTextView;->mBubbleImpl:Landroid/widget/BubbleImpl;

    invoke-virtual {v0}, Landroid/widget/BubbleImpl;->getBorderColor()I

    move-result v0

    return v0
.end method

.method public getBorderWidth()F
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Landroid/widget/BubbleTextView;->mBubbleImpl:Landroid/widget/BubbleImpl;

    invoke-virtual {v0}, Landroid/widget/BubbleImpl;->getBorderWidth()F

    move-result v0

    return v0
.end method

.method public getCornerBottomLeftRadius()F
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Landroid/widget/BubbleTextView;->mBubbleImpl:Landroid/widget/BubbleImpl;

    invoke-virtual {v0}, Landroid/widget/BubbleImpl;->getCornerBottomLeftRadius()F

    move-result v0

    return v0
.end method

.method public getCornerBottomRightRadius()F
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Landroid/widget/BubbleTextView;->mBubbleImpl:Landroid/widget/BubbleImpl;

    invoke-virtual {v0}, Landroid/widget/BubbleImpl;->getCornerBottomRightRadius()F

    move-result v0

    return v0
.end method

.method public getCornerTopLeftRadius()F
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Landroid/widget/BubbleTextView;->mBubbleImpl:Landroid/widget/BubbleImpl;

    invoke-virtual {v0}, Landroid/widget/BubbleImpl;->getCornerTopLeftRadius()F

    move-result v0

    return v0
.end method

.method public getCornerTopRightRadius()F
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Landroid/widget/BubbleTextView;->mBubbleImpl:Landroid/widget/BubbleImpl;

    invoke-virtual {v0}, Landroid/widget/BubbleImpl;->getCornerTopRightRadius()F

    move-result v0

    return v0
.end method

.method public getFillColor()I
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Landroid/widget/BubbleTextView;->mBubbleImpl:Landroid/widget/BubbleImpl;

    invoke-virtual {v0}, Landroid/widget/BubbleImpl;->getFillColor()I

    move-result v0

    return v0
.end method

.method public getFillPadding()F
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Landroid/widget/BubbleTextView;->mBubbleImpl:Landroid/widget/BubbleImpl;

    invoke-virtual {v0}, Landroid/widget/BubbleImpl;->getFillPadding()F

    move-result v0

    return v0
.end method

.method public getPaddingBottom()I
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Landroid/widget/BubbleTextView;->mBubbleImpl:Landroid/widget/BubbleImpl;

    invoke-virtual {v0}, Landroid/widget/BubbleImpl;->getPaddingBottom()I

    move-result v0

    return v0
.end method

.method public getPaddingLeft()I
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Landroid/widget/BubbleTextView;->mBubbleImpl:Landroid/widget/BubbleImpl;

    invoke-virtual {v0}, Landroid/widget/BubbleImpl;->getPaddingLeft()I

    move-result v0

    return v0
.end method

.method public getPaddingRight()I
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Landroid/widget/BubbleTextView;->mBubbleImpl:Landroid/widget/BubbleImpl;

    invoke-virtual {v0}, Landroid/widget/BubbleImpl;->getPaddingRight()I

    move-result v0

    return v0
.end method

.method public getPaddingTop()I
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Landroid/widget/BubbleTextView;->mBubbleImpl:Landroid/widget/BubbleImpl;

    invoke-virtual {v0}, Landroid/widget/BubbleImpl;->getPaddingTop()I

    move-result v0

    return v0
.end method

.method public getSuperPaddingBottom()I
    .locals 1

    .prologue
    .line 243
    invoke-super {p0}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v0

    return v0
.end method

.method public getSuperPaddingLeft()I
    .locals 1

    .prologue
    .line 228
    invoke-super {p0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v0

    return v0
.end method

.method public getSuperPaddingRight()I
    .locals 1

    .prologue
    .line 238
    invoke-super {p0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v0

    return v0
.end method

.method public getSuperPaddingTop()I
    .locals 1

    .prologue
    .line 233
    invoke-super {p0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 52
    invoke-super/range {p0 .. p5}, Landroid/widget/TextView;->onLayout(ZIIII)V

    .line 53
    iget-object v0, p0, Landroid/widget/BubbleTextView;->mBubbleImpl:Landroid/widget/BubbleImpl;

    sub-int v1, p4, p2

    sub-int v2, p5, p3

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/BubbleImpl;->updateDrawable(IIZ)V

    .line 51
    return-void
.end method

.method public requestUpdateBubble()V
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Landroid/widget/BubbleTextView;->mBubbleImpl:Landroid/widget/BubbleImpl;

    invoke-virtual {v0}, Landroid/widget/BubbleImpl;->requestUpdateBubble()V

    .line 247
    return-void
.end method

.method public setArrowDirection(Landroid/widget/BubbleStyle$ArrowDirection;)V
    .locals 1
    .param p1, "arrowDirection"    # Landroid/widget/BubbleStyle$ArrowDirection;

    .prologue
    .line 58
    iget-object v0, p0, Landroid/widget/BubbleTextView;->mBubbleImpl:Landroid/widget/BubbleImpl;

    invoke-virtual {v0, p1}, Landroid/widget/BubbleImpl;->setArrowDirection(Landroid/widget/BubbleStyle$ArrowDirection;)V

    .line 57
    return-void
.end method

.method public setArrowHeight(F)V
    .locals 1
    .param p1, "arrowHeight"    # F

    .prologue
    .line 68
    iget-object v0, p0, Landroid/widget/BubbleTextView;->mBubbleImpl:Landroid/widget/BubbleImpl;

    invoke-virtual {v0, p1}, Landroid/widget/BubbleImpl;->setArrowHeight(F)V

    .line 67
    return-void
.end method

.method public setArrowPosDelta(F)V
    .locals 1
    .param p1, "delta"    # F

    .prologue
    .line 98
    iget-object v0, p0, Landroid/widget/BubbleTextView;->mBubbleImpl:Landroid/widget/BubbleImpl;

    invoke-virtual {v0, p1}, Landroid/widget/BubbleImpl;->setArrowPosDelta(F)V

    .line 97
    return-void
.end method

.method public setArrowPosPolicy(Landroid/widget/BubbleStyle$ArrowPosPolicy;)V
    .locals 1
    .param p1, "policy"    # Landroid/widget/BubbleStyle$ArrowPosPolicy;

    .prologue
    .line 88
    iget-object v0, p0, Landroid/widget/BubbleTextView;->mBubbleImpl:Landroid/widget/BubbleImpl;

    invoke-virtual {v0, p1}, Landroid/widget/BubbleImpl;->setArrowPosPolicy(Landroid/widget/BubbleStyle$ArrowPosPolicy;)V

    .line 87
    return-void
.end method

.method public setArrowTo(I)V
    .locals 1
    .param p1, "viewId"    # I

    .prologue
    .line 108
    iget-object v0, p0, Landroid/widget/BubbleTextView;->mBubbleImpl:Landroid/widget/BubbleImpl;

    invoke-virtual {v0, p1}, Landroid/widget/BubbleImpl;->setArrowTo(I)V

    .line 107
    return-void
.end method

.method public setArrowTo(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 113
    iget-object v0, p0, Landroid/widget/BubbleTextView;->mBubbleImpl:Landroid/widget/BubbleImpl;

    invoke-virtual {v0, p1}, Landroid/widget/BubbleImpl;->setArrowTo(Landroid/view/View;)V

    .line 112
    return-void
.end method

.method public setArrowWidth(F)V
    .locals 1
    .param p1, "arrowWidth"    # F

    .prologue
    .line 78
    iget-object v0, p0, Landroid/widget/BubbleTextView;->mBubbleImpl:Landroid/widget/BubbleImpl;

    invoke-virtual {v0, p1}, Landroid/widget/BubbleImpl;->setArrowWidth(F)V

    .line 77
    return-void
.end method

.method public setBorderColor(I)V
    .locals 1
    .param p1, "borderColor"    # I

    .prologue
    .line 132
    iget-object v0, p0, Landroid/widget/BubbleTextView;->mBubbleImpl:Landroid/widget/BubbleImpl;

    invoke-virtual {v0, p1}, Landroid/widget/BubbleImpl;->setBorderColor(I)V

    .line 131
    return-void
.end method

.method public setBorderWidth(F)V
    .locals 1
    .param p1, "borderWidth"    # F

    .prologue
    .line 142
    iget-object v0, p0, Landroid/widget/BubbleTextView;->mBubbleImpl:Landroid/widget/BubbleImpl;

    invoke-virtual {v0, p1}, Landroid/widget/BubbleImpl;->setBorderWidth(F)V

    .line 141
    return-void
.end method

.method public setCornerRadius(F)V
    .locals 1
    .param p1, "radius"    # F

    .prologue
    .line 167
    iget-object v0, p0, Landroid/widget/BubbleTextView;->mBubbleImpl:Landroid/widget/BubbleImpl;

    invoke-virtual {v0, p1}, Landroid/widget/BubbleImpl;->setCornerRadius(F)V

    .line 166
    return-void
.end method

.method public setCornerRadius(FFFF)V
    .locals 1
    .param p1, "topLeft"    # F
    .param p2, "topRight"    # F
    .param p3, "bottomRight"    # F
    .param p4, "bottomLeft"    # F

    .prologue
    .line 162
    iget-object v0, p0, Landroid/widget/BubbleTextView;->mBubbleImpl:Landroid/widget/BubbleImpl;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/BubbleImpl;->setCornerRadius(FFFF)V

    .line 161
    return-void
.end method

.method public setFillColor(I)V
    .locals 1
    .param p1, "fillColor"    # I

    .prologue
    .line 122
    iget-object v0, p0, Landroid/widget/BubbleTextView;->mBubbleImpl:Landroid/widget/BubbleImpl;

    invoke-virtual {v0, p1}, Landroid/widget/BubbleImpl;->setFillColor(I)V

    .line 121
    return-void
.end method

.method public setFillPadding(F)V
    .locals 1
    .param p1, "fillPadding"    # F

    .prologue
    .line 152
    iget-object v0, p0, Landroid/widget/BubbleTextView;->mBubbleImpl:Landroid/widget/BubbleImpl;

    invoke-virtual {v0, p1}, Landroid/widget/BubbleImpl;->setFillPadding(F)V

    .line 151
    return-void
.end method

.method public setPadding(IIII)V
    .locals 2
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 192
    iget-object v0, p0, Landroid/widget/BubbleTextView;->mBubbleImpl:Landroid/widget/BubbleImpl;

    if-nez v0, :cond_0

    .line 193
    const-string/jumbo v0, "BubbleView"

    const-string/jumbo v1, "mBubbleImpl == null on old Android platform"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/BubbleTextView;->setSuperPadding(IIII)V

    .line 195
    return-void

    .line 198
    :cond_0
    iget-object v0, p0, Landroid/widget/BubbleTextView;->mBubbleImpl:Landroid/widget/BubbleImpl;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/BubbleImpl;->setPadding(IIII)V

    .line 191
    return-void
.end method

.method public setSuperPadding(IIII)V
    .locals 0
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 223
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 222
    return-void
.end method

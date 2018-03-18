.class public Lcom/zeusis/widget/radio/RadioButtonDrawable$Builder;
.super Ljava/lang/Object;
.source "RadioButtonDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zeusis/widget/radio/RadioButtonDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field public static mContext:Landroid/content/Context;


# instance fields
.field private mAnimDuration:I

.field private mHeight:I

.field private mInnerRadius:I

.field private mRadius:I

.field private mStrokeColor:Landroid/content/res/ColorStateList;

.field private mStrokeSize:I

.field private mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x40

    .line 391
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 382
    const/16 v0, 0x168

    iput v0, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable$Builder;->mAnimDuration:I

    .line 383
    const/4 v0, 0x4

    iput v0, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable$Builder;->mStrokeSize:I

    .line 384
    iput v1, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable$Builder;->mWidth:I

    .line 385
    iput v1, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable$Builder;->mHeight:I

    .line 386
    const/16 v0, 0x12

    iput v0, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable$Builder;->mRadius:I

    .line 387
    const/16 v0, 0xa

    iput v0, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable$Builder;->mInnerRadius:I

    .line 391
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "defStyleRes"    # I

    .prologue
    .line 395
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/zeusis/widget/radio/RadioButtonDrawable$Builder;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 394
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const v6, 0x1050164

    const/16 v2, 0x40

    const/16 v5, 0xa

    const/4 v4, 0x1

    const/4 v3, 0x4

    .line 398
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 382
    const/16 v1, 0x168

    iput v1, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable$Builder;->mAnimDuration:I

    .line 383
    iput v3, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable$Builder;->mStrokeSize:I

    .line 384
    iput v2, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable$Builder;->mWidth:I

    .line 385
    iput v2, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable$Builder;->mHeight:I

    .line 386
    const/16 v1, 0x12

    iput v1, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable$Builder;->mRadius:I

    .line 387
    iput v5, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable$Builder;->mInnerRadius:I

    .line 399
    sget-object v1, Lcom/android/internal/R$styleable;->ZeusisRadioButtonDrawable:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 401
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/zeusis/widget/radio/RadioButtonDrawable$Builder;->width(I)Lcom/zeusis/widget/radio/RadioButtonDrawable$Builder;

    .line 402
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/zeusis/widget/radio/RadioButtonDrawable$Builder;->height(I)Lcom/zeusis/widget/radio/RadioButtonDrawable$Builder;

    .line 403
    invoke-static {p1, v4}, Lcom/zeusis/widget/radio/RadioButtonDrawable;->dpToPx(Landroid/content/Context;I)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/zeusis/widget/radio/RadioButtonDrawable$Builder;->strokeSize(I)Lcom/zeusis/widget/radio/RadioButtonDrawable$Builder;

    .line 404
    invoke-static {p1, v5}, Lcom/zeusis/widget/radio/RadioButtonDrawable;->dpToPx(Landroid/content/Context;I)I

    move-result v1

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/zeusis/widget/radio/RadioButtonDrawable$Builder;->radius(I)Lcom/zeusis/widget/radio/RadioButtonDrawable$Builder;

    .line 405
    invoke-static {p1, v3}, Lcom/zeusis/widget/radio/RadioButtonDrawable;->dpToPx(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/zeusis/widget/radio/RadioButtonDrawable$Builder;->innerRadius(I)Lcom/zeusis/widget/radio/RadioButtonDrawable$Builder;

    .line 406
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/zeusis/widget/radio/RadioButtonDrawable$Builder;->strokeColor(Landroid/content/res/ColorStateList;)Lcom/zeusis/widget/radio/RadioButtonDrawable$Builder;

    .line 407
    iget v1, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable$Builder;->mAnimDuration:I

    const/4 v2, 0x6

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/zeusis/widget/radio/RadioButtonDrawable$Builder;->animDuration(I)Lcom/zeusis/widget/radio/RadioButtonDrawable$Builder;

    .line 408
    sput-object p1, Lcom/zeusis/widget/radio/RadioButtonDrawable$Builder;->mContext:Landroid/content/Context;

    .line 409
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 398
    return-void
.end method


# virtual methods
.method public animDuration(I)Lcom/zeusis/widget/radio/RadioButtonDrawable$Builder;
    .locals 0
    .param p1, "duration"    # I

    .prologue
    .line 455
    iput p1, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable$Builder;->mAnimDuration:I

    .line 456
    return-object p0
.end method

.method public build()Lcom/zeusis/widget/radio/RadioButtonDrawable;
    .locals 9

    .prologue
    .line 414
    const v0, -0xe43e01

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable$Builder;->mStrokeColor:Landroid/content/res/ColorStateList;

    .line 416
    new-instance v0, Lcom/zeusis/widget/radio/RadioButtonDrawable;

    iget v1, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable$Builder;->mWidth:I

    iget v2, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable$Builder;->mHeight:I

    iget v3, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable$Builder;->mStrokeSize:I

    iget-object v4, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable$Builder;->mStrokeColor:Landroid/content/res/ColorStateList;

    iget v5, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable$Builder;->mRadius:I

    iget v6, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable$Builder;->mInnerRadius:I

    iget v7, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable$Builder;->mAnimDuration:I

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/zeusis/widget/radio/RadioButtonDrawable;-><init>(IIILandroid/content/res/ColorStateList;IIILcom/zeusis/widget/radio/RadioButtonDrawable;)V

    return-object v0
.end method

.method public height(I)Lcom/zeusis/widget/radio/RadioButtonDrawable$Builder;
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 425
    iput p1, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable$Builder;->mHeight:I

    .line 426
    return-object p0
.end method

.method public innerRadius(I)Lcom/zeusis/widget/radio/RadioButtonDrawable$Builder;
    .locals 0
    .param p1, "radius"    # I

    .prologue
    .line 450
    iput p1, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable$Builder;->mInnerRadius:I

    .line 451
    return-object p0
.end method

.method public radius(I)Lcom/zeusis/widget/radio/RadioButtonDrawable$Builder;
    .locals 0
    .param p1, "radius"    # I

    .prologue
    .line 445
    iput p1, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable$Builder;->mRadius:I

    .line 446
    return-object p0
.end method

.method public strokeColor(I)Lcom/zeusis/widget/radio/RadioButtonDrawable$Builder;
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 435
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable$Builder;->mStrokeColor:Landroid/content/res/ColorStateList;

    .line 436
    return-object p0
.end method

.method public strokeColor(Landroid/content/res/ColorStateList;)Lcom/zeusis/widget/radio/RadioButtonDrawable$Builder;
    .locals 0
    .param p1, "color"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 440
    iput-object p1, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable$Builder;->mStrokeColor:Landroid/content/res/ColorStateList;

    .line 441
    return-object p0
.end method

.method public strokeSize(I)Lcom/zeusis/widget/radio/RadioButtonDrawable$Builder;
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 430
    iput p1, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable$Builder;->mStrokeSize:I

    .line 431
    return-object p0
.end method

.method public width(I)Lcom/zeusis/widget/radio/RadioButtonDrawable$Builder;
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 420
    iput p1, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable$Builder;->mWidth:I

    .line 421
    return-object p0
.end method

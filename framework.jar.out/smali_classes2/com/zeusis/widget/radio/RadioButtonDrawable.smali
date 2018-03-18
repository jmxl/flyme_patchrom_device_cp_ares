.class public Lcom/zeusis/widget/radio/RadioButtonDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "RadioButtonDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zeusis/widget/radio/RadioButtonDrawable$Builder;,
        Lcom/zeusis/widget/radio/RadioButtonDrawable$RadioAnimator;
    }
.end annotation


# static fields
.field private static final PROPERTY_NAME_CHECK_COLOR_ALPHA:Ljava/lang/String; = "CheckColorAlpha"

.field private static final PROPERTY_NAME_CHECK_KENEL_COLOR_ALPHA:Ljava/lang/String; = "CheckKenelColorAlpha"

.field private static final PROPERTY_NAME_CHECK_KENEL_RADIUS:Ljava/lang/String; = "CheckKenelRadius"

.field private static final PROPERTY_NAME_CHECK_RADIUS:Ljava/lang/String; = "CheckRadius"

.field private static final PROPERTY_NAME_UNCHECK_KENEL_COLOR:Ljava/lang/String; = "UnCheckKenelColor"

.field private static final PROPERTY_NAME_UNCHECK_RADIUS:Ljava/lang/String; = "UnCheckRadius"

.field private static final PROPERTY_NAME_UNCHECK_STROKE_COLOR_ALPHA:Ljava/lang/String; = "UnCheckStrokeColorAlpha"

.field private static final PROPERTY_NAME_UNCHECK_STROKE_SIZE:Ljava/lang/String; = "UnCheckStrokeSize"


# instance fields
.field private mAnimDuration:I

.field private mAnimEnable:Z

.field private mAnimProgress:F

.field private mCheckColor:I

.field private mCheckKenelColor:I

.field private mCheckKenelRadius:F

.field private mCheckRadius:F

.field private mChecked:Z

.field private mCurColor:I

.field private mDefaultCheckColor:I

.field private mDefaultCheckKenelColor:I

.field private mDefaultUnCheckKenelColor:I

.field private mDefaultUnCheckStrokeColor:I

.field private mHeight:I

.field private mInEditMode:Z

.field private mInnerRadius:F

.field private mPaint:Landroid/graphics/Paint;

.field private mPrevColor:I

.field private mRadioAnimator:Lcom/zeusis/widget/radio/RadioButtonDrawable$RadioAnimator;

.field private mRadius:F

.field private mRunning:Z

.field private mStartTime:J

.field private mStrokeColor:Landroid/content/res/ColorStateList;

.field private mStrokeSize:F

.field private mUnCheckKenelColor:I

.field private mUnCheckRadius:F

.field private mUnCheckStrokeColor:I

.field private mUnCheckStrokeSize:F

.field private mValueAnimator:Landroid/animation/ValueAnimator;

.field private mWidth:I


# direct methods
.method static synthetic -get0(Lcom/zeusis/widget/radio/RadioButtonDrawable;)I
    .locals 1

    iget v0, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable;->mDefaultCheckColor:I

    return v0
.end method

.method static synthetic -get1(Lcom/zeusis/widget/radio/RadioButtonDrawable;)I
    .locals 1

    iget v0, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable;->mDefaultCheckKenelColor:I

    return v0
.end method

.method static synthetic -get2(Lcom/zeusis/widget/radio/RadioButtonDrawable;)I
    .locals 1

    iget v0, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable;->mDefaultUnCheckStrokeColor:I

    return v0
.end method

.method static synthetic -set0(Lcom/zeusis/widget/radio/RadioButtonDrawable;I)I
    .locals 0

    iput p1, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable;->mCheckColor:I

    return p1
.end method

.method static synthetic -set1(Lcom/zeusis/widget/radio/RadioButtonDrawable;I)I
    .locals 0

    iput p1, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable;->mCheckKenelColor:I

    return p1
.end method

.method static synthetic -set2(Lcom/zeusis/widget/radio/RadioButtonDrawable;F)F
    .locals 0

    iput p1, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable;->mCheckKenelRadius:F

    return p1
.end method

.method static synthetic -set3(Lcom/zeusis/widget/radio/RadioButtonDrawable;F)F
    .locals 0

    iput p1, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable;->mCheckRadius:F

    return p1
.end method

.method static synthetic -set4(Lcom/zeusis/widget/radio/RadioButtonDrawable;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable;->mRunning:Z

    return p1
.end method

.method static synthetic -set5(Lcom/zeusis/widget/radio/RadioButtonDrawable;I)I
    .locals 0

    iput p1, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable;->mUnCheckKenelColor:I

    return p1
.end method

.method static synthetic -set6(Lcom/zeusis/widget/radio/RadioButtonDrawable;F)F
    .locals 0

    iput p1, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable;->mUnCheckRadius:F

    return p1
.end method

.method static synthetic -set7(Lcom/zeusis/widget/radio/RadioButtonDrawable;I)I
    .locals 0

    iput p1, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable;->mUnCheckStrokeColor:I

    return p1
.end method

.method static synthetic -set8(Lcom/zeusis/widget/radio/RadioButtonDrawable;F)F
    .locals 0

    iput p1, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable;->mUnCheckStrokeSize:F

    return p1
.end method

.method private constructor <init>(IIILandroid/content/res/ColorStateList;III)V
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "strokeSize"    # I
    .param p4, "strokeColor"    # Landroid/content/res/ColorStateList;
    .param p5, "radius"    # I
    .param p6, "innerRadius"    # I
    .param p7, "animDuration"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 79
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 26
    iput-boolean v0, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable;->mRunning:Z

    .line 40
    iput-boolean v0, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable;->mChecked:Z

    .line 42
    iput-boolean v0, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable;->mInEditMode:Z

    .line 43
    iput-boolean v3, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable;->mAnimEnable:Z

    .line 45
    iput-object v2, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 46
    iput-object v2, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable;->mRadioAnimator:Lcom/zeusis/widget/radio/RadioButtonDrawable$RadioAnimator;

    .line 48
    iput v1, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable;->mStrokeSize:F

    .line 49
    iput v1, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable;->mRadius:F

    .line 50
    iput v1, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable;->mInnerRadius:F

    .line 51
    const v0, -0x424243

    iput v0, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable;->mDefaultUnCheckStrokeColor:I

    .line 52
    const v0, 0xffffff

    iput v0, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable;->mDefaultUnCheckKenelColor:I

    .line 53
    const v0, -0xe43e01

    iput v0, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable;->mDefaultCheckColor:I

    .line 54
    const/4 v0, -0x1

    iput v0, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable;->mDefaultCheckKenelColor:I

    .line 56
    iput v1, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable;->mUnCheckRadius:F

    .line 57
    iput v1, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable;->mUnCheckStrokeSize:F

    .line 58
    iget v0, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable;->mDefaultUnCheckStrokeColor:I

    iput v0, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable;->mUnCheckStrokeColor:I

    .line 59
    iget v0, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable;->mDefaultUnCheckKenelColor:I

    iput v0, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable;->mUnCheckKenelColor:I

    .line 61
    iput v1, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable;->mCheckRadius:F

    .line 62
    iput v1, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable;->mCheckKenelRadius:F

    .line 63
    iget v0, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable;->mDefaultCheckColor:I

    iput v0, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable;->mCheckColor:I

    .line 64
    iget v0, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable;->mDefaultCheckKenelColor:I

    iput v0, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable;->mCheckKenelColor:I

    .line 81
    iput p1, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable;->mWidth:I

    .line 82
    iput p2, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable;->mHeight:I

    .line 83
    iput p7, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable;->mAnimDuration:I

    .line 85
    int-to-float v0, p5

    iput v0, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable;->mRadius:F

    .line 86
    int-to-float v0, p6

    iput v0, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable;->mInnerRadius:F

    .line 87
    int-to-float v0, p3

    iput v0, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable;->mStrokeSize:F

    .line 88
    iput-object p4, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable;->mStrokeColor:Landroid/content/res/ColorStateList;

    .line 92
    iget v0, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable;->mRadius:F

    iput v0, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable;->mUnCheckRadius:F

    .line 93
    iget v0, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable;->mStrokeSize:F

    iput v0, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable;->mUnCheckStrokeSize:F

    .line 96
    iget v0, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable;->mRadius:F

    iput v0, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable;->mCheckRadius:F

    .line 97
    iget v0, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable;->mInnerRadius:F

    iput v0, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable;->mCheckKenelRadius:F

    .line 99
    new-instance v0, Lcom/zeusis/widget/radio/RadioButtonDrawable$RadioAnimator;

    invoke-direct {v0, p0, v2}, Lcom/zeusis/widget/radio/RadioButtonDrawable$RadioAnimator;-><init>(Lcom/zeusis/widget/radio/RadioButtonDrawable;Lcom/zeusis/widget/radio/RadioButtonDrawable$RadioAnimator;)V

    iput-object v0, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable;->mRadioAnimator:Lcom/zeusis/widget/radio/RadioButtonDrawable$RadioAnimator;

    .line 101
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable;->mPaint:Landroid/graphics/Paint;

    .line 102
    iget-object v0, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 79
    return-void
.end method

.method synthetic constructor <init>(IIILandroid/content/res/ColorStateList;IIILcom/zeusis/widget/radio/RadioButtonDrawable;)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "strokeSize"    # I
    .param p4, "strokeColor"    # Landroid/content/res/ColorStateList;
    .param p5, "radius"    # I
    .param p6, "innerRadius"    # I
    .param p7, "animDuration"    # I

    .prologue
    invoke-direct/range {p0 .. p7}, Lcom/zeusis/widget/radio/RadioButtonDrawable;-><init>(IIILandroid/content/res/ColorStateList;III)V

    return-void
.end method

.method private changeState()V
    .locals 10

    .prologue
    const/16 v9, 0xff

    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 106
    iget-object v0, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable;->mValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 108
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 111
    :cond_0
    iget-boolean v0, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable;->mChecked:Z

    if-eqz v0, :cond_2

    .line 113
    const/16 v0, 0x8

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    .line 115
    const-string/jumbo v1, "UnCheckRadius"

    new-array v2, v7, [F

    aput v8, v2, v5

    aput v8, v2, v6

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v5

    .line 116
    const-string/jumbo v1, "UnCheckStrokeSize"

    new-array v2, v7, [F

    aput v8, v2, v5

    aput v8, v2, v6

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v6

    .line 117
    const-string/jumbo v1, "UnCheckStrokeColorAlpha"

    filled-new-array {v5, v5}, [I

    move-result-object v2

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v7

    .line 118
    const-string/jumbo v1, "UnCheckKenelColor"

    const/4 v2, -0x1

    const/4 v3, -0x1

    filled-new-array {v2, v3}, [I

    move-result-object v2

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 121
    const-string/jumbo v1, "CheckRadius"

    new-array v2, v7, [F

    iget v3, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable;->mRadius:F

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    aput v3, v2, v5

    iget v3, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable;->mRadius:F

    aput v3, v2, v6

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 122
    const-string/jumbo v1, "CheckColorAlpha"

    filled-new-array {v5, v9}, [I

    move-result-object v2

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 123
    const-string/jumbo v1, "CheckKenelRadius"

    new-array v2, v7, [F

    iget v3, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable;->mRadius:F

    aput v3, v2, v5

    iget v3, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable;->mInnerRadius:F

    aput v3, v2, v6

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 124
    const-string/jumbo v1, "CheckKenelColorAlpha"

    const/16 v2, 0x4c

    filled-new-array {v2, v9}, [I

    move-result-object v2

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 113
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 144
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 145
    iget-object v0, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-static {}, Lcom/zeusis/widget/radio/RadioButtonDrawable;->getShowCurveResistanceInterpolator()Landroid/view/animation/PathInterpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable;->mValueAnimator:Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable;->mAnimDuration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 148
    iget-object v0, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable;->mValueAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable;->mRadioAnimator:Lcom/zeusis/widget/radio/RadioButtonDrawable$RadioAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 149
    iget-object v0, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable;->mValueAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable;->mRadioAnimator:Lcom/zeusis/widget/radio/RadioButtonDrawable$RadioAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 150
    iget-object v0, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 105
    return-void

    .line 129
    :cond_2
    const/16 v0, 0x8

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    .line 131
    const-string/jumbo v1, "UnCheckRadius"

    new-array v2, v7, [F

    iget v3, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable;->mRadius:F

    const v4, 0x3ecccccd    # 0.4f

    mul-float/2addr v3, v4

    aput v3, v2, v5

    iget v3, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable;->mRadius:F

    aput v3, v2, v6

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v5

    .line 132
    const-string/jumbo v1, "UnCheckStrokeSize"

    new-array v2, v7, [F

    sget-object v3, Lcom/zeusis/widget/radio/RadioButtonDrawable$Builder;->mContext:Landroid/content/Context;

    const/16 v4, 0xa

    invoke-static {v3, v4}, Lcom/zeusis/widget/radio/RadioButtonDrawable;->dpToPx(Landroid/content/Context;I)I

    move-result v3

    int-to-float v3, v3

    aput v3, v2, v5

    iget v3, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable;->mStrokeSize:F

    aput v3, v2, v6

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v6

    .line 133
    const-string/jumbo v1, "UnCheckStrokeColorAlpha"

    const/16 v2, 0xb3

    filled-new-array {v5, v2}, [I

    move-result-object v2

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v7

    .line 134
    const-string/jumbo v1, "UnCheckKenelColor"

    const v2, 0xffffff

    const v3, 0xffffff

    filled-new-array {v2, v3}, [I

    move-result-object v2

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 137
    const-string/jumbo v1, "CheckRadius"

    new-array v2, v7, [F

    iget v3, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable;->mRadius:F

    aput v3, v2, v5

    iget v3, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable;->mRadius:F

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    aput v3, v2, v6

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 138
    const-string/jumbo v1, "CheckColorAlpha"

    filled-new-array {v9, v5}, [I

    move-result-object v2

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 139
    const-string/jumbo v1, "CheckKenelRadius"

    new-array v2, v7, [F

    aput v8, v2, v5

    aput v8, v2, v6

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 140
    const-string/jumbo v1, "CheckKenelColorAlpha"

    filled-new-array {v5, v5}, [I

    move-result-object v2

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 129
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable;->mValueAnimator:Landroid/animation/ValueAnimator;

    goto/16 :goto_0
.end method

.method public static dpToPx(Landroid/content/Context;I)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dp"    # I

    .prologue
    .line 355
    int-to-float v0, p1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private drawCheckDefault(Landroid/graphics/Canvas;FF)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "cx"    # F
    .param p3, "cy"    # F

    .prologue
    .line 249
    iget-object v0, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable;->mDefaultCheckColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 250
    iget-object v0, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable;->mStrokeSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 251
    iget-object v0, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 252
    iget v0, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable;->mRadius:F

    iget-object v1, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 255
    iget-object v0, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable;->mDefaultCheckKenelColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 256
    iget-object v0, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 257
    iget v0, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable;->mInnerRadius:F

    iget-object v1, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 246
    return-void
.end method

.method private drawCheckRunning(Landroid/graphics/Canvas;FF)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "cx"    # F
    .param p3, "cy"    # F

    .prologue
    .line 221
    iget-object v0, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable;->mCheckColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 222
    iget-object v0, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable;->mStrokeSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 223
    iget-object v0, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 224
    iget v0, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable;->mCheckRadius:F

    iget-object v1, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 227
    iget-object v0, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable;->mCheckKenelColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 228
    iget-object v0, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 229
    iget v0, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable;->mCheckKenelRadius:F

    iget-object v1, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 218
    return-void
.end method

.method private drawUnCheckDefault(Landroid/graphics/Canvas;FF)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "cx"    # F
    .param p3, "cy"    # F

    .prologue
    .line 263
    iget-object v0, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable;->mDefaultUnCheckStrokeColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 264
    iget-object v0, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable;->mStrokeSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 265
    iget-object v0, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 266
    iget v0, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable;->mRadius:F

    iget-object v1, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 269
    iget-object v0, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable;->mDefaultUnCheckKenelColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 270
    iget-object v0, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 271
    iget v0, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable;->mRadius:F

    iget-object v1, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 260
    return-void
.end method

.method private drawUnCheckRunning(Landroid/graphics/Canvas;FF)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "cx"    # F
    .param p3, "cy"    # F

    .prologue
    .line 235
    iget-object v0, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable;->mUnCheckStrokeColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 236
    iget-object v0, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable;->mUnCheckStrokeSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 237
    iget-object v0, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 238
    iget v0, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable;->mUnCheckRadius:F

    iget-object v1, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 241
    iget-object v0, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable;->mUnCheckKenelColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 242
    iget-object v0, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 243
    iget v0, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable;->mUnCheckRadius:F

    iget-object v1, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 232
    return-void
.end method

.method public static getColor(IF)I
    .locals 3
    .param p0, "baseColor"    # I
    .param p1, "alphaPercent"    # F

    .prologue
    .line 370
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 372
    .local v0, "alpha":I
    const v1, 0xffffff

    and-int/2addr v1, p0

    shl-int/lit8 v2, v0, 0x18

    or-int/2addr v1, v2

    return v1
.end method

.method public static getShowCurveResistanceInterpolator()Landroid/view/animation/PathInterpolator;
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    const v3, 0x3e99999a    # 0.3f

    .line 377
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f451eb8    # 0.77f

    const v2, 0x3f733333    # 0.95f

    invoke-direct {v0, v3, v1, v3, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    return-object v0
.end method

.method public static hasState([II)Z
    .locals 4
    .param p0, "states"    # [I
    .param p1, "state"    # I

    .prologue
    const/4 v2, 0x0

    .line 359
    if-nez p0, :cond_0

    .line 360
    return v2

    .line 362
    :cond_0
    array-length v3, p0

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_2

    aget v0, p0, v1

    .line 363
    .local v0, "state1":I
    if-ne v0, p1, :cond_1

    .line 364
    const/4 v1, 0x1

    return v1

    .line 362
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 366
    .end local v0    # "state1":I
    :cond_2
    return v2
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 194
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v0

    .line 195
    .local v0, "cx":F
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v1

    .line 197
    .local v1, "cy":F
    iget-boolean v2, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable;->mRunning:Z

    if-eqz v2, :cond_1

    .line 199
    iget-boolean v2, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable;->mChecked:Z

    if-eqz v2, :cond_0

    .line 200
    invoke-direct {p0, p1, v0, v1}, Lcom/zeusis/widget/radio/RadioButtonDrawable;->drawCheckRunning(Landroid/graphics/Canvas;FF)V

    .line 201
    invoke-direct {p0, p1, v0, v1}, Lcom/zeusis/widget/radio/RadioButtonDrawable;->drawUnCheckRunning(Landroid/graphics/Canvas;FF)V

    .line 192
    :goto_0
    return-void

    .line 204
    :cond_0
    invoke-direct {p0, p1, v0, v1}, Lcom/zeusis/widget/radio/RadioButtonDrawable;->drawCheckRunning(Landroid/graphics/Canvas;FF)V

    .line 205
    invoke-direct {p0, p1, v0, v1}, Lcom/zeusis/widget/radio/RadioButtonDrawable;->drawUnCheckRunning(Landroid/graphics/Canvas;FF)V

    goto :goto_0

    .line 209
    :cond_1
    iget-boolean v2, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable;->mChecked:Z

    if-eqz v2, :cond_2

    .line 210
    invoke-direct {p0, p1, v0, v1}, Lcom/zeusis/widget/radio/RadioButtonDrawable;->drawCheckDefault(Landroid/graphics/Canvas;FF)V

    goto :goto_0

    .line 213
    :cond_2
    invoke-direct {p0, p1, v0, v1}, Lcom/zeusis/widget/radio/RadioButtonDrawable;->drawUnCheckDefault(Landroid/graphics/Canvas;FF)V

    goto :goto_0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 336
    iget v0, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable;->mHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 331
    iget v0, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable;->mWidth:I

    return v0
.end method

.method public getMinimumHeight()I
    .locals 1

    .prologue
    .line 346
    iget v0, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable;->mHeight:I

    return v0
.end method

.method public getMinimumWidth()I
    .locals 1

    .prologue
    .line 341
    iget v0, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable;->mWidth:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 314
    const/4 v0, -0x3

    return v0
.end method

.method public isAnimEnable()Z
    .locals 1

    .prologue
    .line 326
    iget-boolean v0, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable;->mAnimEnable:Z

    return v0
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 351
    const/4 v0, 0x1

    return v0
.end method

.method public jumpToCurrentState()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 291
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 293
    iget-object v0, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable;->mValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 295
    iput-object v1, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 298
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable;->mRunning:Z

    .line 299
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 290
    return-void
.end method

.method protected onStateChange([I)Z
    .locals 3
    .param p1, "state"    # [I

    .prologue
    .line 276
    const v2, 0x10100a0

    invoke-static {p1, v2}, Lcom/zeusis/widget/radio/RadioButtonDrawable;->hasState([II)Z

    move-result v0

    .line 277
    .local v0, "checked":Z
    const/4 v1, 0x0

    .line 279
    .local v1, "needRedraw":Z
    iget-boolean v2, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable;->mChecked:Z

    if-eq v2, v0, :cond_0

    .line 280
    iput-boolean v0, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable;->mChecked:Z

    .line 281
    const/4 v1, 0x1

    .line 282
    iget-boolean v2, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable;->mInEditMode:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable;->mAnimEnable:Z

    if-eqz v2, :cond_0

    .line 283
    invoke-direct {p0}, Lcom/zeusis/widget/radio/RadioButtonDrawable;->changeState()V

    .line 286
    :cond_0
    return v1
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 304
    iget-object v0, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 303
    return-void
.end method

.method public setAnimEnable(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 322
    iput-boolean p1, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable;->mAnimEnable:Z

    .line 321
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 309
    iget-object v0, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 308
    return-void
.end method

.method public setInEditMode(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 318
    iput-boolean p1, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable;->mInEditMode:Z

    .line 317
    return-void
.end method

.method public setStrokeColor(Ljava/lang/String;)V
    .locals 1
    .param p1, "color"    # Ljava/lang/String;

    .prologue
    .line 461
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable;->mStrokeColor:Landroid/content/res/ColorStateList;

    .line 462
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 460
    return-void
.end method

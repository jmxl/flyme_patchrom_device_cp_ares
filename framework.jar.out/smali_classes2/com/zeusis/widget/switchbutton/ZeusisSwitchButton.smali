.class public Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;
.super Landroid/widget/Switch;
.source "ZeusisSwitchButton.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton$SavedState;
    }
.end annotation


# static fields
.field private static CHECKED_PRESSED_STATE:[I = null

.field public static final DEFAULT_ANIMATION_DURATION:I = 0x78

.field public static final DEFAULT_BACK_MEASURE_RATIO:F = 2.2f

.field public static final DEFAULT_TEXT_MARGIN_DP:I = 0x2

.field public static final DEFAULT_THUMB_MARGIN_DP:I = 0x1

.field public static final DEFAULT_THUMB_SIZE_DP:I = 0x14

.field public static final DEFAULT_TINT_COLOR:I = 0x42000000

.field private static UNCHECKED_PRESSED_STATE:[I


# instance fields
.field private mAnimationDuration:J

.field private mBackColor:Landroid/content/res/ColorStateList;

.field private mBackDrawable:Landroid/graphics/drawable/Drawable;

.field private mBackMeasureRatio:F

.field private mBackRadius:F

.field private mBackRectF:Landroid/graphics/RectF;

.field private mChildOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mClickTimeout:I

.field private mCurrBackColor:I

.field private mCurrThumbColor:I

.field private mCurrentBackDrawable:Landroid/graphics/drawable/Drawable;

.field private mDrawDebugRect:Z

.field private mFadeBack:Z

.field private mIsBackUseDrawable:Z

.field private mIsThumbUseDrawable:Z

.field private mLastX:F

.field private mNextBackColor:I

.field private mNextBackDrawable:Landroid/graphics/drawable/Drawable;

.field private mOffLayout:Landroid/text/Layout;

.field private mOffTextColor:I

.field private mOnLayout:Landroid/text/Layout;

.field private mOnTextColor:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPresentThumbRectF:Landroid/graphics/RectF;

.field private mProcess:F

.field private mProcessAnimator:Landroid/animation/ObjectAnimator;

.field private mRectPaint:Landroid/graphics/Paint;

.field private mSafeRectF:Landroid/graphics/RectF;

.field private mStartX:F

.field private mStartY:F

.field private mTextHeight:F

.field private mTextMarginH:F

.field private mTextOff:Ljava/lang/CharSequence;

.field private mTextOffRectF:Landroid/graphics/RectF;

.field private mTextOn:Ljava/lang/CharSequence;

.field private mTextOnRectF:Landroid/graphics/RectF;

.field private mTextPaint:Landroid/text/TextPaint;

.field private mTextWidth:F

.field private mThumbColor:Landroid/content/res/ColorStateList;

.field private mThumbDrawable:Landroid/graphics/drawable/Drawable;

.field private mThumbMargin:Landroid/graphics/RectF;

.field private mThumbRadius:F

.field private mThumbRectF:Landroid/graphics/RectF;

.field private mThumbSizeF:Landroid/graphics/PointF;

.field private mTintColor:I

.field private mTouchSlop:I

.field private mUnCheckColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const v2, 0x10100a7

    const v1, 0x101009e

    .line 54
    const v0, 0x10100a0

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    sput-object v0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->CHECKED_PRESSED_STATE:[I

    .line 55
    const v0, -0x10100a0

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    sput-object v0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->UNCHECKED_PRESSED_STATE:[I

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 100
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const v2, -0x424243

    const/4 v1, 0x0

    .line 104
    invoke-direct {p0, p1, p2}, Landroid/widget/Switch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    iput-object v1, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 58
    iput-object v1, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mBackDrawable:Landroid/graphics/drawable/Drawable;

    .line 69
    iput v2, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mOffTextColor:I

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mDrawDebugRect:Z

    .line 85
    iput-object v1, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mTextOn:Ljava/lang/CharSequence;

    .line 86
    iput-object v1, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mTextOff:Ljava/lang/CharSequence;

    .line 92
    const/4 v0, 0x0

    iput v0, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mTextMarginH:F

    .line 93
    const v0, -0xe43e01

    iput v0, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mTintColor:I

    .line 94
    iput v2, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mUnCheckColor:I

    .line 106
    invoke-direct {p0}, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->initData()V

    .line 107
    const v0, 0x103050d

    invoke-direct {p0, p2, v0}, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->init(Landroid/util/AttributeSet;I)V

    .line 103
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const v2, -0x424243

    const/4 v1, 0x0

    .line 111
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Switch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    iput-object v1, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 58
    iput-object v1, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mBackDrawable:Landroid/graphics/drawable/Drawable;

    .line 69
    iput v2, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mOffTextColor:I

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mDrawDebugRect:Z

    .line 85
    iput-object v1, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mTextOn:Ljava/lang/CharSequence;

    .line 86
    iput-object v1, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mTextOff:Ljava/lang/CharSequence;

    .line 92
    const/4 v0, 0x0

    iput v0, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mTextMarginH:F

    .line 93
    const v0, -0xe43e01

    iput v0, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mTintColor:I

    .line 94
    iput v2, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mUnCheckColor:I

    .line 113
    invoke-direct {p0}, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->initData()V

    .line 114
    const v0, 0x103050d

    invoke-direct {p0, p2, v0}, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->init(Landroid/util/AttributeSet;I)V

    .line 110
    return-void
.end method

.method private applyAppStyle(Landroid/util/AttributeSet;)V
    .locals 24
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 173
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 174
    .local v12, "res":Landroid/content/res/Resources;
    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v20

    move-object/from16 v0, v20

    iget v6, v0, Landroid/util/DisplayMetrics;->density:F

    .line 176
    .local v6, "density":F
    const/high16 v20, 0x3f800000    # 1.0f

    mul-float v7, v6, v20

    .line 177
    .local v7, "margin":F
    move v9, v7

    .line 178
    .local v9, "marginLeft":F
    move v10, v7

    .line 179
    .local v10, "marginRight":F
    move v11, v7

    .line 180
    .local v11, "marginTop":F
    move v8, v7

    .line 181
    .local v8, "marginBottom":F
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v20

    const/high16 v21, 0x41800000    # 16.0f

    invoke-static/range {v20 .. v21}, Lcom/zeusis/widget/switchbutton/Util;->dpToPx(Landroid/content/Context;F)I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v17, v0

    .line 182
    .local v17, "thumbWidth":F
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v20

    const/high16 v21, 0x41800000    # 16.0f

    invoke-static/range {v20 .. v21}, Lcom/zeusis/widget/switchbutton/Util;->dpToPx(Landroid/content/Context;F)I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v16, v0

    .line 183
    .local v16, "thumbHeight":F
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v20

    const/high16 v21, 0x3f800000    # 1.0f

    invoke-static/range {v20 .. v21}, Lcom/zeusis/widget/switchbutton/Util;->dpToPx(Landroid/content/Context;F)I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mThumbRadius:F

    .line 184
    move-object/from16 v0, p0

    iget v0, v0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mThumbRadius:F

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mBackRadius:F

    .line 186
    const/high16 v20, 0x40000000    # 2.0f

    mul-float v20, v20, v6

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mTextMarginH:F

    .line 188
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v20

    sget-object v21, Lcom/android/internal/R$styleable;->ZeusisSwitchButton:[I

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v13

    .line 189
    .local v13, "ta":Landroid/content/res/TypedArray;
    const/16 v20, 0x2

    move/from16 v0, v20

    invoke-virtual {v13, v0, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    .line 190
    const/16 v20, 0x5

    move/from16 v0, v20

    invoke-virtual {v13, v0, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v9

    .line 191
    const/16 v20, 0x6

    move/from16 v0, v20

    invoke-virtual {v13, v0, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v10

    .line 192
    const/16 v20, 0x3

    move/from16 v0, v20

    invoke-virtual {v13, v0, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v11

    .line 193
    const/16 v20, 0x4

    move/from16 v0, v20

    invoke-virtual {v13, v0, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v8

    .line 194
    const/16 v20, 0x7

    move/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v13, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v17

    .line 195
    const/16 v20, 0x8

    move/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v13, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v16

    .line 196
    const/high16 v20, 0x3f800000    # 1.0f

    const/16 v21, 0x9

    move/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mThumbRadius:F

    .line 197
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v20

    const/high16 v21, 0x3f800000    # 1.0f

    invoke-static/range {v20 .. v21}, Lcom/zeusis/widget/switchbutton/Util;->dpToPx(Landroid/content/Context;F)I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const/16 v21, 0xa

    move/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mBackRadius:F

    .line 198
    const/16 v20, 0xe

    const v21, 0x400ccccd    # 2.2f

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v13, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mBackMeasureRatio:F

    .line 199
    const/16 v20, 0xf

    const/16 v21, 0x78

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v13, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mAnimationDuration:J

    .line 200
    const/16 v20, 0xd

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v13, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mFadeBack:Z

    .line 201
    move-object/from16 v0, p0

    iget v0, v0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mTextMarginH:F

    move/from16 v20, v0

    const/16 v21, 0x14

    move/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mTextMarginH:F

    .line 202
    const/16 v20, 0x12

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mTextOn:Ljava/lang/CharSequence;

    .line 203
    const/16 v20, 0x13

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mTextOff:Ljava/lang/CharSequence;

    .line 205
    const/16 v20, 0x11

    const/16 v21, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v13, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v18

    .line 206
    .local v18, "tintColor":I
    const/16 v20, 0x10

    const/16 v21, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v13, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v19

    .line 207
    .local v19, "unCheckColor":I
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    .line 208
    .local v15, "thumbDrawable":Landroid/graphics/drawable/Drawable;
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v14

    .line 209
    .local v14, "thumbColor":Landroid/content/res/ColorStateList;
    const/16 v20, 0xb

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 210
    .local v5, "backDrawable":Landroid/graphics/drawable/Drawable;
    const/16 v20, 0xc

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    .line 211
    .local v4, "backColor":Landroid/content/res/ColorStateList;
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    .line 214
    if-eqz v18, :cond_0

    .line 215
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mTintColor:I

    .line 216
    :cond_0
    if-eqz v19, :cond_1

    .line 217
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mUnCheckColor:I

    .line 218
    :cond_1
    if-eqz v15, :cond_2

    .line 219
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 220
    :cond_2
    if-eqz v14, :cond_3

    .line 221
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mThumbColor:Landroid/content/res/ColorStateList;

    .line 222
    :cond_3
    if-eqz v5, :cond_4

    .line 223
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mBackDrawable:Landroid/graphics/drawable/Drawable;

    .line 224
    :cond_4
    if-eqz v4, :cond_5

    .line 225
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mBackColor:Landroid/content/res/ColorStateList;

    .line 229
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v20, v0

    if-eqz v20, :cond_9

    const/16 v20, 0x1

    :goto_0
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mIsThumbUseDrawable:Z

    .line 231
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mIsThumbUseDrawable:Z

    move/from16 v20, v0

    if-nez v20, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mThumbColor:Landroid/content/res/ColorStateList;

    move-object/from16 v20, v0

    if-nez v20, :cond_6

    .line 232
    move-object/from16 v0, p0

    iget v0, v0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mTintColor:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/zeusis/widget/switchbutton/ColorUtils;->generateThumbColorWithTintColor(I)Landroid/content/res/ColorStateList;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mThumbColor:Landroid/content/res/ColorStateList;

    .line 233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mThumbColor:Landroid/content/res/ColorStateList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mCurrThumbColor:I

    .line 236
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mIsThumbUseDrawable:Z

    move/from16 v20, v0

    if-eqz v20, :cond_7

    .line 237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v17

    move/from16 v1, v20

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v17

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v16

    move/from16 v1, v20

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v16

    .line 240
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mThumbSizeF:Landroid/graphics/PointF;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v17

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mBackDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v20, v0

    if-eqz v20, :cond_a

    const/16 v20, 0x1

    :goto_1
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mIsBackUseDrawable:Z

    .line 244
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mIsBackUseDrawable:Z

    move/from16 v20, v0

    if-nez v20, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mBackColor:Landroid/content/res/ColorStateList;

    move-object/from16 v20, v0

    if-nez v20, :cond_8

    .line 245
    move-object/from16 v0, p0

    iget v0, v0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mTintColor:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/zeusis/widget/switchbutton/ColorUtils;->generateBackColorWithTintColor(I)Landroid/content/res/ColorStateList;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mBackColor:Landroid/content/res/ColorStateList;

    .line 246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mBackColor:Landroid/content/res/ColorStateList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mCurrBackColor:I

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mBackColor:Landroid/content/res/ColorStateList;

    move-object/from16 v20, v0

    sget-object v21, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->CHECKED_PRESSED_STATE:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mCurrBackColor:I

    move/from16 v22, v0

    invoke-virtual/range {v20 .. v22}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mNextBackColor:I

    .line 251
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v9, v11, v10, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/RectF;->width()F

    move-result v20

    const/16 v21, 0x0

    cmpl-float v20, v20, v21

    if-ltz v20, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mBackMeasureRatio:F

    move/from16 v20, v0

    const/high16 v21, 0x3f800000    # 1.0f

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->max(FF)F

    move-result v20

    :goto_2
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mBackMeasureRatio:F

    .line 256
    const-string/jumbo v20, "process"

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [F

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    aput v22, v21, v23

    const/16 v22, 0x0

    const/16 v23, 0x1

    aput v22, v21, v23

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v20

    const-wide/16 v22, 0x78

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mProcessAnimator:Landroid/animation/ObjectAnimator;

    .line 257
    sget v20, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v21, 0x15

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_c

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mProcessAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v20, v0

    invoke-static {}, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->getShowCurveMagneticInterpolator()Landroid/view/animation/PathInterpolator;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 262
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mProcessAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mAnimationDuration:J

    move-wide/from16 v22, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 171
    return-void

    .line 229
    :cond_9
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 243
    :cond_a
    const/16 v20, 0x0

    goto/16 :goto_1

    .line 254
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mBackMeasureRatio:F

    move/from16 v20, v0

    goto :goto_2

    .line 260
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mProcessAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v20, v0

    new-instance v21, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct/range {v21 .. v21}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual/range {v20 .. v21}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_3
.end method

.method private applyThemeStyle(I)V
    .locals 3
    .param p1, "defStyle"    # I

    .prologue
    .line 159
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/android/internal/R$styleable;->ZeusisSwitchButton:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 160
    .local v0, "ta":Landroid/content/res/TypedArray;
    iget v1, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mTintColor:I

    const/16 v2, 0x11

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mTintColor:I

    .line 161
    iget v1, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mUnCheckColor:I

    const/16 v2, 0x10

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mUnCheckColor:I

    .line 162
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 163
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mThumbColor:Landroid/content/res/ColorStateList;

    .line 164
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mBackDrawable:Landroid/graphics/drawable/Drawable;

    .line 165
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mBackColor:Landroid/content/res/ColorStateList;

    .line 166
    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mTextOn:Ljava/lang/CharSequence;

    .line 167
    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mTextOff:Ljava/lang/CharSequence;

    .line 168
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 158
    return-void
.end method

.method private catchView()V
    .locals 2

    .prologue
    .line 647
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 648
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    .line 649
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 646
    :cond_0
    return-void
.end method

.method private ceil(D)I
    .locals 3
    .param p1, "dimen"    # D

    .prologue
    .line 366
    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public static getShowCurveMagneticInterpolator()Landroid/view/animation/PathInterpolator;
    .locals 5

    .prologue
    .line 1087
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f70a3d7    # 0.94f

    const v2, 0x3e570a3d    # 0.21f

    const v3, 0x3f2e147b    # 0.68f

    const v4, 0x3f6b851f    # 0.92f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    return-object v0
.end method

.method private getStatusBasedOnPos()Z
    .locals 2

    .prologue
    .line 600
    invoke-virtual {p0}, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->getProcess()F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private init(Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyle"    # I

    .prologue
    const/4 v3, 0x0

    const/high16 v2, 0x41500000    # 13.0f

    .line 139
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 142
    invoke-direct {p0, p2}, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->applyThemeStyle(I)V

    .line 145
    invoke-direct {p0, p1}, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->applyAppStyle(Landroid/util/AttributeSet;)V

    .line 151
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->setProcess(F)V

    .line 155
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/zeusis/widget/switchbutton/Util;->dpToPx(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/zeusis/widget/switchbutton/Util;->dpToPx(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {p0, v3, v0, v3, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 138
    return-void
.end method

.method private initData()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 119
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mTouchSlop:I

    .line 120
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mClickTimeout:I

    .line 122
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iput-object v0, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mTextPaint:Landroid/text/TextPaint;

    .line 123
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mPaint:Landroid/graphics/Paint;

    .line 124
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mRectPaint:Landroid/graphics/Paint;

    .line 125
    iget-object v0, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mRectPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 126
    iget-object v0, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mRectPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 128
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mThumbRectF:Landroid/graphics/RectF;

    .line 129
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mBackRectF:Landroid/graphics/RectF;

    .line 130
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mSafeRectF:Landroid/graphics/RectF;

    .line 131
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mThumbSizeF:Landroid/graphics/PointF;

    .line 132
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    .line 133
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mTextOnRectF:Landroid/graphics/RectF;

    .line 134
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mTextOffRectF:Landroid/graphics/RectF;

    .line 135
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mPresentThumbRectF:Landroid/graphics/RectF;

    .line 117
    return-void
.end method

.method private makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;
    .locals 8
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 281
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v2, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mTextPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mTextPaint:Landroid/text/TextPaint;

    invoke-static {p1, v1}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v1

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v3, v4

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/4 v6, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    return-object v0
.end method

.method private measureHeight(I)I
    .locals 11
    .param p1, "heightMeasureSpec"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v10, 0x0

    .line 331
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 332
    .local v0, "heightMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 335
    .local v1, "heightSize":I
    iget-object v6, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mThumbSizeF:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    iget-object v8, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mThumbSizeF:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->y:F

    iget-object v9, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->top:F

    add-float/2addr v8, v9

    iget-object v9, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->right:F

    add-float/2addr v8, v9

    invoke-static {v6, v8}, Ljava/lang/Math;->max(FF)F

    move-result v6

    float-to-double v8, v6

    invoke-direct {p0, v8, v9}, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->ceil(D)I

    move-result v3

    .line 336
    .local v3, "minHeight":I
    iget-object v6, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mOnLayout:Landroid/text/Layout;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mOnLayout:Landroid/text/Layout;

    invoke-virtual {v6}, Landroid/text/Layout;->getHeight()I

    move-result v6

    :goto_0
    int-to-float v5, v6

    .line 337
    .local v5, "onHeight":F
    iget-object v6, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mOffLayout:Landroid/text/Layout;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mOffLayout:Landroid/text/Layout;

    invoke-virtual {v6}, Landroid/text/Layout;->getHeight()I

    move-result v7

    :cond_0
    int-to-float v4, v7

    .line 338
    .local v4, "offHeight":F
    cmpl-float v6, v5, v10

    if-nez v6, :cond_1

    cmpl-float v6, v4, v10

    if-eqz v6, :cond_2

    .line 339
    :cond_1
    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iput v6, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mTextHeight:F

    .line 340
    int-to-float v6, v3

    iget v7, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mTextHeight:F

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    float-to-double v6, v6

    invoke-direct {p0, v6, v7}, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->ceil(D)I

    move-result v3

    .line 342
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 343
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    add-int/2addr v6, v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v7

    add-int/2addr v6, v7

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 345
    const/high16 v6, 0x40000000    # 2.0f

    if-ne v0, v6, :cond_5

    .line 346
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 354
    .local v2, "measuredHeight":I
    :cond_3
    :goto_1
    return v2

    .end local v2    # "measuredHeight":I
    .end local v4    # "offHeight":F
    .end local v5    # "onHeight":F
    :cond_4
    move v6, v7

    .line 336
    goto :goto_0

    .line 348
    .restart local v4    # "offHeight":F
    .restart local v5    # "onHeight":F
    :cond_5
    move v2, v3

    .line 349
    .restart local v2    # "measuredHeight":I
    const/high16 v6, -0x80000000

    if-ne v0, v6, :cond_3

    .line 350
    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_1
.end method

.method private measureWidth(I)I
    .locals 13
    .param p1, "widthMeasureSpec"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v12, 0x0

    .line 297
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 298
    .local v6, "widthSize":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 301
    .local v5, "widthMode":I
    iget-object v7, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mThumbSizeF:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    iget v9, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mBackMeasureRatio:F

    mul-float/2addr v7, v9

    float-to-double v10, v7

    invoke-direct {p0, v10, v11}, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->ceil(D)I

    move-result v2

    .line 302
    .local v2, "minWidth":I
    iget-boolean v7, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mIsBackUseDrawable:Z

    if-eqz v7, :cond_0

    .line 303
    iget-object v7, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mBackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v7

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 305
    :cond_0
    iget-object v7, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mOnLayout:Landroid/text/Layout;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mOnLayout:Landroid/text/Layout;

    invoke-virtual {v7}, Landroid/text/Layout;->getWidth()I

    move-result v7

    :goto_0
    int-to-float v4, v7

    .line 306
    .local v4, "onWidth":F
    iget-object v7, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mOffLayout:Landroid/text/Layout;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mOffLayout:Landroid/text/Layout;

    invoke-virtual {v7}, Landroid/text/Layout;->getWidth()I

    move-result v8

    :cond_1
    int-to-float v3, v8

    .line 307
    .local v3, "offWidth":F
    cmpl-float v7, v4, v12

    if-nez v7, :cond_2

    cmpl-float v7, v3, v12

    if-eqz v7, :cond_3

    .line 308
    :cond_2
    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v7

    iget v8, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mTextMarginH:F

    const/high16 v9, 0x40000000    # 2.0f

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    iput v7, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mTextWidth:F

    .line 309
    int-to-float v7, v2

    iget-object v8, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mThumbSizeF:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->x:F

    sub-float v0, v7, v8

    .line 310
    .local v0, "left":F
    iget v7, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mTextWidth:F

    cmpg-float v7, v0, v7

    if-gez v7, :cond_3

    .line 311
    int-to-float v7, v2

    iget v8, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mTextWidth:F

    sub-float/2addr v8, v0

    add-float/2addr v7, v8

    float-to-int v2, v7

    .line 314
    .end local v0    # "left":F
    :cond_3
    int-to-float v7, v2

    iget-object v8, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    add-float/2addr v7, v8

    iget-object v8, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->right:F

    add-float/2addr v7, v8

    float-to-double v8, v7

    invoke-direct {p0, v8, v9}, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->ceil(D)I

    move-result v7

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 315
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v7

    add-int/2addr v7, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 316
    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    move-result v7

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 318
    const/high16 v7, 0x40000000    # 2.0f

    if-ne v5, v7, :cond_6

    .line 319
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 327
    .local v1, "measuredWidth":I
    :cond_4
    :goto_1
    return v1

    .end local v1    # "measuredWidth":I
    .end local v3    # "offWidth":F
    .end local v4    # "onWidth":F
    :cond_5
    move v7, v8

    .line 305
    goto :goto_0

    .line 321
    .restart local v3    # "offWidth":F
    .restart local v4    # "onWidth":F
    :cond_6
    move v1, v2

    .line 322
    .restart local v1    # "measuredWidth":I
    const/high16 v7, -0x80000000

    if-ne v5, v7, :cond_4

    .line 323
    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_1
.end method

.method private setDrawableState(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 731
    if-eqz p1, :cond_0

    .line 732
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    .line 733
    .local v0, "myDrawableState":[I
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 734
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 730
    .end local v0    # "myDrawableState":[I
    :cond_0
    return-void
.end method

.method private setup()V
    .locals 22

    .prologue
    .line 373
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v15

    int-to-float v15, v15

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v17, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->max(FF)F

    move-result v16

    add-float v14, v15, v16

    .line 374
    .local v14, "thumbTop":F
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v15

    int-to-float v15, v15

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v17, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->max(FF)F

    move-result v16

    add-float v13, v15, v16

    .line 376
    .local v13, "thumbLeft":F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mOnLayout:Landroid/text/Layout;

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mOffLayout:Landroid/text/Layout;

    if-eqz v15, :cond_0

    .line 377
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    iget v15, v15, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v16, v0

    add-float v15, v15, v16

    const/16 v16, 0x0

    cmpl-float v15, v15, v16

    if-lez v15, :cond_0

    .line 379
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v16

    sub-int v15, v15, v16

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v16

    sub-int v15, v15, v16

    int-to-float v15, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mThumbSizeF:Landroid/graphics/PointF;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v16, v0

    sub-float v15, v15, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v16, v0

    sub-float v15, v15, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v16, v0

    sub-float v15, v15, v16

    const/high16 v16, 0x40000000    # 2.0f

    div-float v4, v15, v16

    .line 380
    .local v4, "addition":F
    add-float/2addr v14, v4

    .line 384
    .end local v4    # "addition":F
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mIsThumbUseDrawable:Z

    if-eqz v15, :cond_1

    .line 385
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mThumbSizeF:Landroid/graphics/PointF;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mThumbSizeF:Landroid/graphics/PointF;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->max(FF)F

    move-result v16

    move/from16 v0, v16

    iput v0, v15, Landroid/graphics/PointF;->x:F

    .line 386
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mThumbSizeF:Landroid/graphics/PointF;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mThumbSizeF:Landroid/graphics/PointF;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->max(FF)F

    move-result v16

    move/from16 v0, v16

    iput v0, v15, Landroid/graphics/PointF;->y:F

    .line 389
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mThumbRectF:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mThumbSizeF:Landroid/graphics/PointF;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v16, v0

    add-float v16, v16, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mThumbSizeF:Landroid/graphics/PointF;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v17, v0

    add-float v17, v17, v14

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v15, v13, v14, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 391
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mThumbRectF:Landroid/graphics/RectF;

    iget v15, v15, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v16, v0

    sub-float v5, v15, v16

    .line 392
    .local v5, "backLeft":F
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mThumbSizeF:Landroid/graphics/PointF;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mBackMeasureRatio:F

    move/from16 v17, v0

    mul-float v16, v16, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mThumbSizeF:Landroid/graphics/PointF;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mTextWidth:F

    move/from16 v18, v0

    add-float v17, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->max(FF)F

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mThumbRectF:Landroid/graphics/RectF;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/RectF;->width()F

    move-result v17

    sub-float v16, v16, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mTextWidth:F

    move/from16 v17, v0

    sub-float v16, v16, v17

    const/high16 v17, 0x40000000    # 2.0f

    div-float v16, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->min(FF)F

    move-result v12

    .line 393
    .local v12, "textDiffWidth":F
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mThumbRectF:Landroid/graphics/RectF;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/RectF;->height()F

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v17, v0

    add-float v16, v16, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v17, v0

    add-float v16, v16, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mTextHeight:F

    move/from16 v17, v0

    sub-float v16, v16, v17

    const/high16 v17, 0x40000000    # 2.0f

    div-float v16, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->min(FF)F

    move-result v11

    .line 394
    .local v11, "textDiffHeight":F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mBackRectF:Landroid/graphics/RectF;

    add-float v16, v5, v12

    .line 395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mThumbRectF:Landroid/graphics/RectF;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v18, v0

    sub-float v17, v17, v18

    add-float v17, v17, v11

    .line 396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v18, v0

    add-float v18, v18, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mThumbSizeF:Landroid/graphics/PointF;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mBackMeasureRatio:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mThumbSizeF:Landroid/graphics/PointF;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mTextWidth:F

    move/from16 v21, v0

    add-float v20, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(FF)F

    move-result v19

    add-float v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v19, v0

    add-float v18, v18, v19

    sub-float v18, v18, v12

    .line 397
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mThumbRectF:Landroid/graphics/RectF;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v20, v0

    add-float v19, v19, v20

    sub-float v19, v19, v11

    .line 394
    invoke-virtual/range {v15 .. v19}, Landroid/graphics/RectF;->set(FFFF)V

    .line 399
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mSafeRectF:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mThumbRectF:Landroid/graphics/RectF;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mBackRectF:Landroid/graphics/RectF;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v19, v0

    sub-float v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mThumbRectF:Landroid/graphics/RectF;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/RectF;->width()F

    move-result v19

    sub-float v18, v18, v19

    const/16 v19, 0x0

    invoke-virtual/range {v15 .. v19}, Landroid/graphics/RectF;->set(FFFF)V

    .line 401
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mBackRectF:Landroid/graphics/RectF;

    invoke-virtual {v15}, Landroid/graphics/RectF;->width()F

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mBackRectF:Landroid/graphics/RectF;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/RectF;->height()F

    move-result v16

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->min(FF)F

    move-result v15

    const/high16 v16, 0x40000000    # 2.0f

    div-float v10, v15, v16

    .line 402
    .local v10, "minBackRadius":F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mBackRadius:F

    invoke-static {v10, v15}, Ljava/lang/Math;->min(FF)F

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mBackRadius:F

    .line 404
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mBackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v15, :cond_2

    .line 405
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mBackDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mBackRectF:Landroid/graphics/RectF;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v16, v0

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mBackRectF:Landroid/graphics/RectF;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v17, v0

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mBackRectF:Landroid/graphics/RectF;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v18, v0

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->ceil(D)I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mBackRectF:Landroid/graphics/RectF;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v19, v0

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->ceil(D)I

    move-result v19

    invoke-virtual/range {v15 .. v19}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 408
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mOnLayout:Landroid/text/Layout;

    if-eqz v15, :cond_3

    .line 409
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mBackRectF:Landroid/graphics/RectF;

    iget v15, v15, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mBackRectF:Landroid/graphics/RectF;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/RectF;->width()F

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mThumbRectF:Landroid/graphics/RectF;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/RectF;->width()F

    move-result v17

    sub-float v16, v16, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mOnLayout:Landroid/text/Layout;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/text/Layout;->getWidth()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    sub-float v16, v16, v17

    const/high16 v17, 0x40000000    # 2.0f

    div-float v16, v16, v17

    add-float v15, v15, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v16, v0

    sub-float v16, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mTextMarginH:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    iget v15, v15, Landroid/graphics/RectF;->left:F

    const/16 v18, 0x0

    cmpl-float v15, v15, v18

    if-lez v15, :cond_5

    const/4 v15, 0x1

    :goto_0
    int-to-float v15, v15

    mul-float v15, v15, v17

    add-float v8, v16, v15

    .line 410
    .local v8, "marginOnX":F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mBackRectF:Landroid/graphics/RectF;

    iget v15, v15, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mBackRectF:Landroid/graphics/RectF;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/RectF;->height()F

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mOnLayout:Landroid/text/Layout;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/text/Layout;->getHeight()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    sub-float v16, v16, v17

    const/high16 v17, 0x40000000    # 2.0f

    div-float v16, v16, v17

    add-float v9, v15, v16

    .line 411
    .local v9, "marginOnY":F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mTextOnRectF:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mOnLayout:Landroid/text/Layout;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/text/Layout;->getWidth()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    add-float v16, v16, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mOnLayout:Landroid/text/Layout;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/text/Layout;->getHeight()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    add-float v17, v17, v9

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v15, v8, v9, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 414
    .end local v8    # "marginOnX":F
    .end local v9    # "marginOnY":F
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mOffLayout:Landroid/text/Layout;

    if-eqz v15, :cond_4

    .line 415
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mBackRectF:Landroid/graphics/RectF;

    iget v15, v15, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mBackRectF:Landroid/graphics/RectF;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/RectF;->width()F

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mThumbRectF:Landroid/graphics/RectF;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/RectF;->width()F

    move-result v17

    sub-float v16, v16, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mOffLayout:Landroid/text/Layout;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/text/Layout;->getWidth()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    sub-float v16, v16, v17

    const/high16 v17, 0x40000000    # 2.0f

    div-float v16, v16, v17

    sub-float v15, v15, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v16, v0

    add-float v15, v15, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mOffLayout:Landroid/text/Layout;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/text/Layout;->getWidth()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    sub-float v16, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mTextMarginH:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    iget v15, v15, Landroid/graphics/RectF;->right:F

    const/16 v18, 0x0

    cmpl-float v15, v15, v18

    if-lez v15, :cond_6

    const/4 v15, 0x1

    :goto_1
    int-to-float v15, v15

    mul-float v15, v15, v17

    sub-float v6, v16, v15

    .line 416
    .local v6, "marginOffX":F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mBackRectF:Landroid/graphics/RectF;

    iget v15, v15, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mBackRectF:Landroid/graphics/RectF;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/RectF;->height()F

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mOffLayout:Landroid/text/Layout;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/text/Layout;->getHeight()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    sub-float v16, v16, v17

    const/high16 v17, 0x40000000    # 2.0f

    div-float v16, v16, v17

    add-float v7, v15, v16

    .line 417
    .local v7, "marginOffY":F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mTextOffRectF:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mOffLayout:Landroid/text/Layout;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/text/Layout;->getWidth()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    add-float v16, v16, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mOffLayout:Landroid/text/Layout;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/text/Layout;->getHeight()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    add-float v17, v17, v7

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v15, v6, v7, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 372
    .end local v6    # "marginOffX":F
    .end local v7    # "marginOffY":F
    :cond_4
    return-void

    .line 409
    :cond_5
    const/4 v15, -0x1

    goto/16 :goto_0

    .line 415
    :cond_6
    const/4 v15, -0x1

    goto :goto_1
.end method


# virtual methods
.method protected animateToState(Z)V
    .locals 5
    .param p1, "checked"    # Z

    .prologue
    const/4 v1, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 629
    iget-object v0, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mProcessAnimator:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_0

    .line 630
    return-void

    .line 632
    :cond_0
    iget-object v0, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mProcessAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 633
    iget-object v0, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mProcessAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 636
    :cond_1
    if-eqz p1, :cond_2

    .line 637
    iget-object v0, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mProcessAnimator:Landroid/animation/ObjectAnimator;

    new-array v1, v1, [F

    iget v2, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mProcess:F

    aput v2, v1, v3

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v1, v4

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 641
    :goto_0
    iget-object v0, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mProcessAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 628
    return-void

    .line 639
    :cond_2
    iget-object v0, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mProcessAnimator:Landroid/animation/ObjectAnimator;

    new-array v1, v1, [F

    iget v2, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mProcess:F

    aput v2, v1, v3

    const/4 v2, 0x0

    aput v2, v1, v4

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    goto :goto_0
.end method

.method protected drawableStateChanged()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 510
    invoke-super {p0}, Landroid/widget/Switch;->drawableStateChanged()V

    .line 512
    iget-boolean v3, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mIsThumbUseDrawable:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mThumbColor:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_2

    .line 513
    iget-object v3, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mThumbColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v4

    iget v5, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mCurrThumbColor:I

    invoke-virtual {v3, v4, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    iput v3, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mCurrThumbColor:I

    .line 518
    :goto_0
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v1, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->UNCHECKED_PRESSED_STATE:[I

    .line 519
    .local v1, "nextState":[I
    :goto_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 520
    .local v2, "textColors":Landroid/content/res/ColorStateList;
    if-eqz v2, :cond_0

    .line 521
    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    .line 522
    .local v0, "defaultTextColor":I
    sget-object v3, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->CHECKED_PRESSED_STATE:[I

    invoke-virtual {v2, v3, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    iput v3, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mOnTextColor:I

    .line 523
    sget-object v3, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->UNCHECKED_PRESSED_STATE:[I

    invoke-virtual {v2, v3, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    iput v3, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mOffTextColor:I

    .line 525
    .end local v0    # "defaultTextColor":I
    :cond_0
    iget-boolean v3, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mIsBackUseDrawable:Z

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mBackColor:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_4

    .line 526
    iget-object v3, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mBackColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v4

    iget v5, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mCurrBackColor:I

    invoke-virtual {v3, v4, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    iput v3, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mCurrBackColor:I

    .line 527
    iget-object v3, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mBackColor:Landroid/content/res/ColorStateList;

    iget v4, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mCurrBackColor:I

    invoke-virtual {v3, v1, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    iput v3, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mNextBackColor:I

    .line 509
    :cond_1
    :goto_2
    return-void

    .line 515
    .end local v1    # "nextState":[I
    .end local v2    # "textColors":Landroid/content/res/ColorStateList;
    :cond_2
    iget-object v3, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v3}, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->setDrawableState(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 518
    :cond_3
    sget-object v1, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->CHECKED_PRESSED_STATE:[I

    .restart local v1    # "nextState":[I
    goto :goto_1

    .line 529
    .restart local v2    # "textColors":Landroid/content/res/ColorStateList;
    :cond_4
    iget-object v3, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mBackDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v3, v3, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mFadeBack:Z

    if-eqz v3, :cond_5

    .line 530
    iget-object v3, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mBackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 531
    iget-object v3, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mBackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mNextBackDrawable:Landroid/graphics/drawable/Drawable;

    .line 535
    :goto_3
    iget-object v3, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mBackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v3}, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->setDrawableState(Landroid/graphics/drawable/Drawable;)V

    .line 536
    iget-object v3, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mBackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    .line 537
    iget-object v3, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mBackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mCurrentBackDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    .line 533
    :cond_5
    iput-object v6, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mNextBackDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_3
.end method

.method public getAnimationDuration()J
    .locals 2

    .prologue
    .line 751
    iget-wide v0, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mAnimationDuration:J

    return-wide v0
.end method

.method public getBackColor()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 853
    iget-object v0, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mBackColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getBackDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 824
    iget-object v0, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mBackDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getBackMeasureRatio()F
    .locals 1

    .prologue
    .line 878
    iget v0, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mBackMeasureRatio:F

    return v0
.end method

.method public getBackRadius()F
    .locals 1

    .prologue
    .line 963
    iget v0, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mBackRadius:F

    return v0
.end method

.method public getBackSizeF()Landroid/graphics/PointF;
    .locals 3

    .prologue
    .line 955
    new-instance v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mBackRectF:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget-object v2, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mBackRectF:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public final getProcess()F
    .locals 1

    .prologue
    .line 604
    iget v0, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mProcess:F

    return v0
.end method

.method public getThumbColor()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 797
    iget-object v0, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mThumbColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getThumbDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 767
    iget-object v0, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getThumbHeight()F
    .locals 1

    .prologue
    .line 927
    iget-object v0, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mThumbSizeF:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    return v0
.end method

.method public getThumbMargin()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 887
    iget-object v0, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getThumbRadius()F
    .locals 1

    .prologue
    .line 944
    iget v0, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mThumbRadius:F

    return v0
.end method

.method public getThumbSizeF()Landroid/graphics/PointF;
    .locals 1

    .prologue
    .line 940
    iget-object v0, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mThumbSizeF:Landroid/graphics/PointF;

    return-object v0
.end method

.method public getThumbWidth()F
    .locals 1

    .prologue
    .line 919
    iget-object v0, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mThumbSizeF:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    return v0
.end method

.method public getTintColor()I
    .locals 1

    .prologue
    .line 989
    iget v0, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mTintColor:I

    return v0
.end method

.method public getUnCheckColor()I
    .locals 1

    .prologue
    .line 440
    iget v0, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mUnCheckColor:I

    return v0
.end method

.method public isDrawDebugRect()Z
    .locals 1

    .prologue
    .line 739
    iget-boolean v0, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mDrawDebugRect:Z

    return v0
.end method

.method public isFadeBack()Z
    .locals 1

    .prologue
    .line 978
    iget-boolean v0, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mFadeBack:Z

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 4

    .prologue
    .line 423
    invoke-super {p0}, Landroid/widget/Switch;->jumpDrawablesToCurrentState()V

    .line 425
    iget-object v0, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mProcessAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mProcessAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 422
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 454
    invoke-super {p0, p1}, Landroid/widget/Switch;->onDraw(Landroid/graphics/Canvas;)V

    .line 457
    iget-boolean v5, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mFadeBack:Z

    if-eqz v5, :cond_3

    .line 458
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 459
    iget-object v5, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mPaint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mTintColor:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 464
    :goto_0
    iget-object v5, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mBackRectF:Landroid/graphics/RectF;

    iget v6, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mBackRadius:F

    iget v7, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mBackRadius:F

    iget-object v8, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 472
    :goto_1
    invoke-virtual {p0}, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->getProcess()F

    move-result v5

    float-to-double v6, v5

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    cmpl-double v5, v6, v8

    if-lez v5, :cond_4

    iget-object v2, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mOnLayout:Landroid/text/Layout;

    .line 473
    .local v2, "switchText":Landroid/text/Layout;
    :goto_2
    invoke-virtual {p0}, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->getProcess()F

    move-result v5

    float-to-double v6, v5

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    cmpl-double v5, v6, v8

    if-lez v5, :cond_5

    iget-object v4, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mTextOnRectF:Landroid/graphics/RectF;

    .line 474
    .local v4, "textRectF":Landroid/graphics/RectF;
    :goto_3
    if-eqz v2, :cond_0

    if-eqz v4, :cond_0

    .line 475
    invoke-virtual {p0}, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->getProcess()F

    move-result v5

    float-to-double v6, v5

    const-wide/high16 v8, 0x3fe8000000000000L    # 0.75

    cmpl-double v5, v6, v8

    if-ltz v5, :cond_6

    invoke-virtual {p0}, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->getProcess()F

    move-result v5

    const/high16 v6, 0x40800000    # 4.0f

    mul-float/2addr v5, v6

    const/high16 v6, 0x40400000    # 3.0f

    sub-float/2addr v5, v6

    :goto_4
    const/high16 v6, 0x437f0000    # 255.0f

    mul-float/2addr v5, v6

    float-to-int v0, v5

    .line 476
    .local v0, "alpha":I
    invoke-virtual {p0}, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->getProcess()F

    move-result v5

    float-to-double v6, v5

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    cmpl-double v5, v6, v8

    if-lez v5, :cond_8

    iget v3, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mOnTextColor:I

    .line 477
    .local v3, "textColor":I
    :goto_5
    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    .line 478
    .local v1, "colorAlpha":I
    mul-int v5, v1, v0

    div-int/lit16 v1, v5, 0xff

    .line 479
    invoke-virtual {v2}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v6

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v7

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v8

    invoke-virtual {v5, v1, v6, v7, v8}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 480
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 481
    iget v5, v4, Landroid/graphics/RectF;->left:F

    iget v6, v4, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 482
    invoke-virtual {v2, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 483
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 487
    .end local v0    # "alpha":I
    .end local v1    # "colorAlpha":I
    .end local v3    # "textColor":I
    :cond_0
    iget-object v5, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mPresentThumbRectF:Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mThumbRectF:Landroid/graphics/RectF;

    invoke-virtual {v5, v6}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 488
    iget-object v5, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mPresentThumbRectF:Landroid/graphics/RectF;

    iget v6, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mProcess:F

    iget-object v7, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mSafeRectF:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    mul-float/2addr v6, v7

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/graphics/RectF;->offset(FF)V

    .line 491
    iget-object v5, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mPresentThumbRectF:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    float-to-int v6, v6

    iget-object v7, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mPresentThumbRectF:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    float-to-int v7, v7

    iget-object v8, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mPresentThumbRectF:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->right:F

    float-to-double v8, v8

    invoke-direct {p0, v8, v9}, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->ceil(D)I

    move-result v8

    iget-object v9, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mPresentThumbRectF:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->bottom:F

    float-to-double v10, v9

    invoke-direct {p0, v10, v11}, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->ceil(D)I

    move-result v9

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 492
    iget-object v5, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 498
    iget-boolean v5, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mDrawDebugRect:Z

    if-eqz v5, :cond_1

    .line 499
    iget-object v5, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mRectPaint:Landroid/graphics/Paint;

    const/high16 v6, -0x560000

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 500
    iget-object v5, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mBackRectF:Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mRectPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 501
    iget-object v5, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mRectPaint:Landroid/graphics/Paint;

    const v6, -0xffff01

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 502
    iget-object v5, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mPresentThumbRectF:Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mRectPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 503
    iget-object v5, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mRectPaint:Landroid/graphics/Paint;

    const v6, -0xff3400

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 504
    invoke-virtual {p0}, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->getProcess()F

    move-result v5

    float-to-double v6, v5

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    cmpl-double v5, v6, v8

    if-lez v5, :cond_9

    iget-object v5, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mTextOnRectF:Landroid/graphics/RectF;

    :goto_6
    iget-object v6, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mRectPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 453
    :cond_1
    return-void

    .line 461
    .end local v2    # "switchText":Landroid/text/Layout;
    .end local v4    # "textRectF":Landroid/graphics/RectF;
    :cond_2
    iget-object v5, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mPaint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mUnCheckColor:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_0

    .line 467
    :cond_3
    iget-object v5, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mPaint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mCurrBackColor:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 468
    iget-object v5, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mBackRectF:Landroid/graphics/RectF;

    iget v6, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mBackRadius:F

    iget v7, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mBackRadius:F

    iget-object v8, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 472
    :cond_4
    iget-object v2, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mOffLayout:Landroid/text/Layout;

    .restart local v2    # "switchText":Landroid/text/Layout;
    goto/16 :goto_2

    .line 473
    :cond_5
    iget-object v4, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mTextOffRectF:Landroid/graphics/RectF;

    .restart local v4    # "textRectF":Landroid/graphics/RectF;
    goto/16 :goto_3

    .line 475
    :cond_6
    invoke-virtual {p0}, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->getProcess()F

    move-result v5

    float-to-double v6, v5

    const-wide/high16 v8, 0x3fd0000000000000L    # 0.25

    cmpg-double v5, v6, v8

    if-gez v5, :cond_7

    invoke-virtual {p0}, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->getProcess()F

    move-result v5

    const/high16 v6, 0x40800000    # 4.0f

    mul-float/2addr v5, v6

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v5, v6, v5

    goto/16 :goto_4

    :cond_7
    const/4 v5, 0x0

    goto/16 :goto_4

    .line 476
    .restart local v0    # "alpha":I
    :cond_8
    iget v3, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mOffTextColor:I

    goto/16 :goto_5

    .line 504
    .end local v0    # "alpha":I
    :cond_9
    iget-object v5, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mTextOffRectF:Landroid/graphics/RectF;

    goto :goto_6
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 432
    invoke-super {p0}, Landroid/widget/Switch;->onFinishInflate()V

    .line 431
    return-void
.end method

.method public onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 286
    iget-object v0, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mOnLayout:Landroid/text/Layout;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mTextOn:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mTextOn:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object v0

    iput-object v0, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mOnLayout:Landroid/text/Layout;

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mOffLayout:Landroid/text/Layout;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mTextOff:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 290
    iget-object v0, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mTextOff:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object v0

    iput-object v0, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mOffLayout:Landroid/text/Layout;

    .line 292
    :cond_1
    invoke-direct {p0, p1}, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->measureWidth(I)I

    move-result v0

    invoke-direct {p0, p2}, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->measureHeight(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 285
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    move-object v0, p1

    .line 1032
    check-cast v0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton$SavedState;

    .line 1033
    .local v0, "ss":Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton$SavedState;
    iget-object v1, v0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton$SavedState;->onText:Ljava/lang/CharSequence;

    iget-object v2, v0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton$SavedState;->offText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v1, v2}, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->setText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1034
    invoke-virtual {v0}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/Switch;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1031
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 1023
    invoke-super {p0}, Landroid/widget/Switch;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 1024
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton$SavedState;

    invoke-direct {v0, v1}, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1025
    .local v0, "ss":Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton$SavedState;
    iget-object v2, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mTextOn:Ljava/lang/CharSequence;

    iput-object v2, v0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton$SavedState;->onText:Ljava/lang/CharSequence;

    .line 1026
    iget-object v2, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mTextOff:Ljava/lang/CharSequence;

    iput-object v2, v0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton$SavedState;->offText:Ljava/lang/CharSequence;

    .line 1027
    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 359
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/Switch;->onSizeChanged(IIII)V

    .line 360
    if-ne p1, p3, :cond_0

    if-eq p2, p4, :cond_1

    .line 361
    :cond_0
    invoke-direct {p0}, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->setup()V

    .line 358
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v10, 0x0

    .line 545
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 549
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 551
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iget v7, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mStartX:F

    sub-float v1, v6, v7

    .line 552
    .local v1, "deltaX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iget v7, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mStartY:F

    sub-float v2, v6, v7

    .line 557
    .local v2, "deltaY":F
    packed-switch v0, :pswitch_data_0

    .line 590
    :goto_0
    const/4 v6, 0x1

    return v6

    .line 546
    .end local v0    # "action":I
    .end local v1    # "deltaX":F
    .end local v2    # "deltaY":F
    :cond_0
    return v10

    .line 559
    .restart local v0    # "action":I
    .restart local v1    # "deltaX":F
    .restart local v2    # "deltaY":F
    :pswitch_0
    invoke-direct {p0}, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->catchView()V

    .line 560
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iput v6, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mStartX:F

    .line 561
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iput v6, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mStartY:F

    .line 562
    iget v6, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mStartX:F

    iput v6, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mLastX:F

    goto :goto_0

    .line 566
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 567
    .local v5, "x":F
    invoke-virtual {p0}, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->getProcess()F

    move-result v6

    iget v7, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mLastX:F

    sub-float v7, v5, v7

    iget-object v8, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mSafeRectF:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v8

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    invoke-virtual {p0, v6}, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->setProcess(F)V

    .line 568
    iput v5, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mLastX:F

    goto :goto_0

    .line 573
    .end local v5    # "x":F
    :pswitch_2
    invoke-direct {p0}, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->getStatusBasedOnPos()Z

    move-result v3

    .line 574
    .local v3, "nextStatus":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v8

    sub-long/2addr v6, v8

    long-to-float v4, v6

    .line 575
    .local v4, "time":F
    iget v6, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mTouchSlop:I

    int-to-float v6, v6

    cmpg-float v6, v1, v6

    if-gez v6, :cond_1

    iget v6, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mTouchSlop:I

    int-to-float v6, v6

    cmpg-float v6, v2, v6

    if-gez v6, :cond_1

    iget v6, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mClickTimeout:I

    int-to-float v6, v6

    cmpg-float v6, v4, v6

    if-gez v6, :cond_1

    .line 576
    invoke-virtual {p0}, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->performClick()Z

    goto :goto_0

    .line 578
    :cond_1
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v6

    if-eq v3, v6, :cond_2

    .line 579
    invoke-virtual {p0, v10}, Landroid/view/View;->playSoundEffect(I)V

    .line 580
    invoke-virtual {p0, v3}, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->setChecked(Z)V

    goto :goto_0

    .line 582
    :cond_2
    invoke-virtual {p0, v3}, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->animateToState(Z)V

    goto :goto_0

    .line 557
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1039
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mOnLayout:Landroid/text/Layout;

    .line 1038
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1043
    return-void
.end method

.method public performClick()Z
    .locals 1

    .prologue
    .line 620
    invoke-super {p0}, Landroid/widget/Switch;->performClick()Z

    move-result v0

    return v0
.end method

.method public setAnimationDuration(J)V
    .locals 1
    .param p1, "animationDuration"    # J

    .prologue
    .line 759
    iput-wide p1, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mAnimationDuration:J

    .line 758
    return-void
.end method

.method public setBackColor(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "backColor"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 861
    iput-object p1, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mBackColor:Landroid/content/res/ColorStateList;

    .line 862
    iget-object v0, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mBackColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    .line 863
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080814

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->setBackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 865
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 860
    return-void
.end method

.method public setBackColorRes(I)V
    .locals 1
    .param p1, "backColorRes"    # I

    .prologue
    .line 873
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->setBackColor(Landroid/content/res/ColorStateList;)V

    .line 872
    return-void
.end method

.method public setBackDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "backDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 832
    iput-object p1, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mBackDrawable:Landroid/graphics/drawable/Drawable;

    .line 833
    iget-object v0, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mBackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mIsBackUseDrawable:Z

    .line 834
    invoke-direct {p0}, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->setup()V

    .line 835
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 836
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 837
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 831
    return-void

    .line 833
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBackDrawableRes(I)V
    .locals 1
    .param p1, "backDrawableRes"    # I

    .prologue
    .line 845
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->setBackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 844
    return-void
.end method

.method public setBackMeasureRatio(F)V
    .locals 0
    .param p1, "backMeasureRatio"    # F

    .prologue
    .line 882
    iput p1, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mBackMeasureRatio:F

    .line 883
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 881
    return-void
.end method

.method public setBackRadius(F)V
    .locals 1
    .param p1, "backRadius"    # F

    .prologue
    .line 971
    iput p1, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mBackRadius:F

    .line 972
    iget-boolean v0, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mIsBackUseDrawable:Z

    if-nez v0, :cond_0

    .line 973
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 970
    :cond_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 4
    .param p1, "checked"    # Z

    .prologue
    .line 656
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    .line 657
    .local v0, "oldChecked":Z
    if-ne p1, v0, :cond_0

    .line 658
    return-void

    .line 660
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->isLaidOut()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 661
    iget-object v1, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mProcessAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_1

    .line 662
    iget-object v1, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mProcessAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x78

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 667
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->animateToState(Z)V

    .line 668
    invoke-super {p0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 654
    return-void

    .line 664
    :cond_2
    iget-object v1, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mProcessAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_1

    .line 665
    iget-object v1, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mProcessAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    goto :goto_0
.end method

.method public setCheckedImmediately(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 718
    invoke-super {p0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 719
    iget-object v0, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mProcessAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mProcessAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 720
    iget-object v0, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mProcessAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 722
    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->setProcess(F)V

    .line 723
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 717
    return-void

    .line 722
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCheckedImmediatelyNoEvent(Z)V
    .locals 2
    .param p1, "checked"    # Z

    .prologue
    const/4 v1, 0x0

    .line 682
    iget-object v0, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mChildOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-nez v0, :cond_0

    .line 683
    invoke-virtual {p0, p1}, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->setCheckedImmediately(Z)V

    .line 681
    :goto_0
    return-void

    .line 685
    :cond_0
    invoke-super {p0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 686
    invoke-virtual {p0, p1}, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->setCheckedImmediately(Z)V

    .line 687
    iget-object v0, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mChildOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p0, v0}, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0
.end method

.method public setCheckedNoEvent(Z)V
    .locals 2
    .param p1, "checked"    # Z

    .prologue
    const/4 v1, 0x0

    .line 672
    iget-object v0, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mChildOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-nez v0, :cond_0

    .line 673
    invoke-virtual {p0, p1}, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->setChecked(Z)V

    .line 671
    :goto_0
    return-void

    .line 675
    :cond_0
    invoke-super {p0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 676
    invoke-virtual {p0, p1}, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->setChecked(Z)V

    .line 677
    iget-object v0, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mChildOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p0, v0}, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0
.end method

.method public setDrawDebugRect(Z)V
    .locals 0
    .param p1, "drawDebugRect"    # Z

    .prologue
    .line 743
    iput-boolean p1, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mDrawDebugRect:Z

    .line 744
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 742
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1082
    invoke-super {p0, p1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 1083
    if-eqz p1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 1081
    return-void

    .line 1083
    :cond_0
    const v0, 0x3e851eb8    # 0.26f

    goto :goto_0
.end method

.method public setFadeBack(Z)V
    .locals 0
    .param p1, "fadeBack"    # Z

    .prologue
    .line 982
    iput-boolean p1, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mFadeBack:Z

    .line 981
    return-void
.end method

.method public setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0
    .param p1, "onCheckedChangeListener"    # Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .prologue
    .line 713
    invoke-super {p0, p1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 714
    iput-object p1, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mChildOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 712
    return-void
.end method

.method public final setProcess(F)V
    .locals 2
    .param p1, "process"    # F

    .prologue
    .line 608
    move v0, p1

    .line 609
    .local v0, "tp":F
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v1

    if-lez v1, :cond_1

    .line 610
    const/high16 v0, 0x3f800000    # 1.0f

    .line 614
    :cond_0
    :goto_0
    iput v0, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mProcess:F

    .line 615
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 607
    return-void

    .line 611
    :cond_1
    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    .line 612
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "onText"    # Ljava/lang/CharSequence;
    .param p2, "offText"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v0, 0x0

    .line 1011
    iput-object p1, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mTextOn:Ljava/lang/CharSequence;

    .line 1012
    iput-object p2, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mTextOff:Ljava/lang/CharSequence;

    .line 1014
    iput-object v0, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mOnLayout:Landroid/text/Layout;

    .line 1015
    iput-object v0, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mOffLayout:Landroid/text/Layout;

    .line 1017
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 1010
    return-void
.end method

.method public setTheme(Lcom/zeusis/widget/switchbutton/ZeusisSwitchButtonStyle;)V
    .locals 1
    .param p1, "theme"    # Lcom/zeusis/widget/switchbutton/ZeusisSwitchButtonStyle;

    .prologue
    .line 270
    sget-object v0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButtonStyle;->E_SWITCH_STYLE_LIGHT:Lcom/zeusis/widget/switchbutton/ZeusisSwitchButtonStyle;

    if-ne p1, v0, :cond_1

    .line 271
    const v0, 0x103050d

    invoke-direct {p0, v0}, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->applyThemeStyle(I)V

    .line 275
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 276
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 277
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 269
    return-void

    .line 272
    :cond_1
    sget-object v0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButtonStyle;->E_SWITCH_STYLE_DARK:Lcom/zeusis/widget/switchbutton/ZeusisSwitchButtonStyle;

    if-ne p1, v0, :cond_0

    .line 273
    const v0, 0x103050e

    invoke-direct {p0, v0}, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->applyThemeStyle(I)V

    goto :goto_0
.end method

.method public setThumbColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "thumbColor"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 805
    iput-object p1, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mThumbColor:Landroid/content/res/ColorStateList;

    .line 806
    iget-object v0, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mThumbColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    .line 807
    iget-object v0, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 804
    :cond_0
    return-void
.end method

.method public setThumbColorRes(I)V
    .locals 1
    .param p1, "thumbColorRes"    # I

    .prologue
    .line 816
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->setThumbColor(Landroid/content/res/ColorStateList;)V

    .line 815
    return-void
.end method

.method public setThumbDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "thumbDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 775
    iput-object p1, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 776
    iget-object v0, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mIsThumbUseDrawable:Z

    .line 777
    invoke-direct {p0}, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->setup()V

    .line 778
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 779
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 780
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 774
    return-void

    .line 776
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setThumbDrawableRes(I)V
    .locals 1
    .param p1, "thumbDrawableRes"    # I

    .prologue
    .line 788
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 787
    return-void
.end method

.method public setThumbMargin(FFFF)V
    .locals 1
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 899
    iget-object v0, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 900
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 898
    return-void
.end method

.method public setThumbMargin(Landroid/graphics/RectF;)V
    .locals 4
    .param p1, "thumbMargin"    # Landroid/graphics/RectF;

    .prologue
    const/4 v0, 0x0

    .line 891
    if-nez p1, :cond_0

    .line 892
    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->setThumbMargin(FFFF)V

    .line 890
    :goto_0
    return-void

    .line 894
    :cond_0
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget v2, p1, Landroid/graphics/RectF;->right:F

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->setThumbMargin(FFFF)V

    goto :goto_0
.end method

.method public setThumbRadius(F)V
    .locals 1
    .param p1, "thumbRadius"    # F

    .prologue
    .line 948
    iput p1, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mThumbRadius:F

    .line 949
    iget-boolean v0, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mIsThumbUseDrawable:Z

    if-nez v0, :cond_0

    .line 950
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 947
    :cond_0
    return-void
.end method

.method public setThumbSize(FF)V
    .locals 1
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    .line 909
    iget-object v0, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mThumbSizeF:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 910
    invoke-direct {p0}, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->setup()V

    .line 911
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 908
    return-void
.end method

.method public setThumbSize(Landroid/graphics/PointF;)V
    .locals 3
    .param p1, "size"    # Landroid/graphics/PointF;

    .prologue
    .line 931
    if-nez p1, :cond_0

    .line 932
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x41a00000    # 20.0f

    mul-float v0, v1, v2

    .line 933
    .local v0, "defaultSize":F
    invoke-virtual {p0, v0, v0}, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->setThumbSize(FF)V

    .line 930
    .end local v0    # "defaultSize":F
    :goto_0
    return-void

    .line 935
    :cond_0
    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget v2, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v1, v2}, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->setThumbSize(FF)V

    goto :goto_0
.end method

.method public setTintColor(I)V
    .locals 2
    .param p1, "tintColor"    # I

    .prologue
    const/4 v1, 0x0

    .line 996
    iput p1, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mTintColor:I

    .line 997
    iget v0, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mTintColor:I

    invoke-static {v0}, Lcom/zeusis/widget/switchbutton/ColorUtils;->generateThumbColorWithTintColor(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mThumbColor:Landroid/content/res/ColorStateList;

    .line 998
    iget v0, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mTintColor:I

    invoke-static {v0}, Lcom/zeusis/widget/switchbutton/ColorUtils;->generateBackColorWithTintColor(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mBackColor:Landroid/content/res/ColorStateList;

    .line 999
    iput-boolean v1, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mIsBackUseDrawable:Z

    .line 1000
    iput-boolean v1, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mIsThumbUseDrawable:Z

    .line 1002
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 1003
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 995
    return-void
.end method

.method public setUnCheckColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 448
    iput p1, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mUnCheckColor:I

    .line 449
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 447
    return-void
.end method

.method public toggleImmediately()V
    .locals 1

    .prologue
    .line 727
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->setCheckedImmediately(Z)V

    .line 726
    return-void

    .line 727
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public toggleImmediatelyNoEvent()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 702
    iget-object v0, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mChildOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-nez v0, :cond_0

    .line 703
    invoke-virtual {p0}, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->toggleImmediately()V

    .line 701
    :goto_0
    return-void

    .line 705
    :cond_0
    invoke-super {p0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 706
    invoke-virtual {p0}, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->toggleImmediately()V

    .line 707
    iget-object v0, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mChildOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p0, v0}, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0
.end method

.method public toggleNoEvent()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 692
    iget-object v0, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mChildOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-nez v0, :cond_0

    .line 693
    invoke-virtual {p0}, Landroid/widget/Switch;->toggle()V

    .line 691
    :goto_0
    return-void

    .line 695
    :cond_0
    invoke-super {p0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 696
    invoke-virtual {p0}, Landroid/widget/Switch;->toggle()V

    .line 697
    iget-object v0, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->mChildOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p0, v0}, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0
.end method

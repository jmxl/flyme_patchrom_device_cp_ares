.class public Landroid/graphics/BlurParams;
.super Ljava/lang/Object;
.source "BlurParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/BlurParams$1;
    }
.end annotation


# static fields
.field public static final BLUR_FLT_EPSILON:F = 0.01f

.field public static final BLUR_MODE_NONE:I = 0x0

.field public static final BLUR_MODE_REGION:I = 0x3

.field public static final BLUR_MODE_VIEW:I = 0x1

.field public static final BLUR_MODE_WINDOW:I = 0x2

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/graphics/BlurParams;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_BLUR_MODE:I = 0x0

.field public static final DEFAULT_CHROMA_CONTRAST:F = 1.0f

.field public static final DEFAULT_COLOR:I = 0x0

.field public static final DEFAULT_LUMA_BRIGHTNESS:F = 0.0f

.field public static final DEFAULT_LUMA_CONTRAST:F = 1.0f

.field public static final DEFAULT_RADIUS:F

.field public static final EMPTY:Landroid/graphics/BlurParams;


# instance fields
.field public area:Landroid/graphics/Rect;

.field public blendColor:I

.field public chromaContrast:F

.field public lumaBrightness:F

.field public lumaContrast:F

.field public mode:I

.field public radius:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    new-instance v0, Landroid/graphics/BlurParams;

    invoke-direct {v0}, Landroid/graphics/BlurParams;-><init>()V

    sput-object v0, Landroid/graphics/BlurParams;->EMPTY:Landroid/graphics/BlurParams;

    .line 134
    new-instance v0, Landroid/graphics/BlurParams$1;

    invoke-direct {v0}, Landroid/graphics/BlurParams$1;-><init>()V

    sput-object v0, Landroid/graphics/BlurParams;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput v3, p0, Landroid/graphics/BlurParams;->mode:I

    .line 28
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/graphics/BlurParams;->area:Landroid/graphics/Rect;

    .line 32
    iput v1, p0, Landroid/graphics/BlurParams;->radius:F

    .line 35
    iput v2, p0, Landroid/graphics/BlurParams;->lumaContrast:F

    .line 38
    iput v1, p0, Landroid/graphics/BlurParams;->lumaBrightness:F

    .line 41
    iput v2, p0, Landroid/graphics/BlurParams;->chromaContrast:F

    .line 46
    iput v3, p0, Landroid/graphics/BlurParams;->blendColor:I

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/graphics/BlurParams;)V
    .locals 4
    .param p1, "src"    # Landroid/graphics/BlurParams;

    .prologue
    const/4 v3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput v3, p0, Landroid/graphics/BlurParams;->mode:I

    .line 28
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/graphics/BlurParams;->area:Landroid/graphics/Rect;

    .line 32
    iput v1, p0, Landroid/graphics/BlurParams;->radius:F

    .line 35
    iput v2, p0, Landroid/graphics/BlurParams;->lumaContrast:F

    .line 38
    iput v1, p0, Landroid/graphics/BlurParams;->lumaBrightness:F

    .line 41
    iput v2, p0, Landroid/graphics/BlurParams;->chromaContrast:F

    .line 46
    iput v3, p0, Landroid/graphics/BlurParams;->blendColor:I

    .line 50
    invoke-virtual {p0, p1}, Landroid/graphics/BlurParams;->set(Landroid/graphics/BlurParams;)V

    .line 49
    return-void
.end method

.method public static compare(Landroid/graphics/BlurParams;Landroid/graphics/BlurParams;)Z
    .locals 1
    .param p0, "lhs"    # Landroid/graphics/BlurParams;
    .param p1, "rhs"    # Landroid/graphics/BlurParams;

    .prologue
    .line 71
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 72
    :cond_0
    if-nez p0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 74
    :cond_1
    invoke-virtual {p0, p1}, Landroid/graphics/BlurParams;->equals(Landroid/graphics/BlurParams;)Z

    move-result v0

    return v0
.end method

.method private static lerp(FFF)F
    .locals 1
    .param p0, "a"    # F
    .param p1, "b"    # F
    .param p2, "bw"    # F

    .prologue
    .line 109
    sub-float v0, p1, p0

    mul-float/2addr v0, p2

    add-float/2addr v0, p0

    return v0
.end method

.method private static lerp(IIF)I
    .locals 3
    .param p0, "a"    # I
    .param p1, "b"    # I
    .param p2, "bw"    # F

    .prologue
    .line 114
    invoke-static {}, Landroid/animation/ArgbEvaluator;->getInstance()Landroid/animation/ArgbEvaluator;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p2, v1, v2}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static lerp(Landroid/graphics/BlurParams;Landroid/graphics/BlurParams;F)Landroid/graphics/BlurParams;
    .locals 3
    .param p0, "a"    # Landroid/graphics/BlurParams;
    .param p1, "b"    # Landroid/graphics/BlurParams;
    .param p2, "bw"    # F

    .prologue
    .line 96
    new-instance v0, Landroid/graphics/BlurParams;

    invoke-direct {v0}, Landroid/graphics/BlurParams;-><init>()V

    .line 97
    .local v0, "c":Landroid/graphics/BlurParams;
    iget v1, p1, Landroid/graphics/BlurParams;->mode:I

    iput v1, v0, Landroid/graphics/BlurParams;->mode:I

    .line 98
    iget-object v1, v0, Landroid/graphics/BlurParams;->area:Landroid/graphics/Rect;

    iget-object v2, p1, Landroid/graphics/BlurParams;->area:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 99
    iget v1, p0, Landroid/graphics/BlurParams;->radius:F

    iget v2, p1, Landroid/graphics/BlurParams;->radius:F

    invoke-static {v1, v2, p2}, Landroid/graphics/BlurParams;->lerp(FFF)F

    move-result v1

    iput v1, v0, Landroid/graphics/BlurParams;->radius:F

    .line 100
    iget v1, p0, Landroid/graphics/BlurParams;->lumaContrast:F

    iget v2, p1, Landroid/graphics/BlurParams;->lumaContrast:F

    invoke-static {v1, v2, p2}, Landroid/graphics/BlurParams;->lerp(FFF)F

    move-result v1

    iput v1, v0, Landroid/graphics/BlurParams;->lumaContrast:F

    .line 101
    iget v1, p0, Landroid/graphics/BlurParams;->lumaBrightness:F

    iget v2, p1, Landroid/graphics/BlurParams;->lumaBrightness:F

    invoke-static {v1, v2, p2}, Landroid/graphics/BlurParams;->lerp(FFF)F

    move-result v1

    iput v1, v0, Landroid/graphics/BlurParams;->lumaBrightness:F

    .line 102
    iget v1, p0, Landroid/graphics/BlurParams;->chromaContrast:F

    iget v2, p1, Landroid/graphics/BlurParams;->chromaContrast:F

    invoke-static {v1, v2, p2}, Landroid/graphics/BlurParams;->lerp(FFF)F

    move-result v1

    iput v1, v0, Landroid/graphics/BlurParams;->chromaContrast:F

    .line 103
    iget v1, p0, Landroid/graphics/BlurParams;->blendColor:I

    iget v2, p1, Landroid/graphics/BlurParams;->blendColor:I

    invoke-static {v1, v2, p2}, Landroid/graphics/BlurParams;->lerp(IIF)I

    move-result v1

    iput v1, v0, Landroid/graphics/BlurParams;->blendColor:I

    .line 105
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Landroid/graphics/BlurParams;)Z
    .locals 5
    .param p1, "rhs"    # Landroid/graphics/BlurParams;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const v4, 0x3c23d70a    # 0.01f

    .line 56
    if-ne p0, p1, :cond_0

    return v0

    .line 57
    :cond_0
    if-nez p1, :cond_1

    return v1

    .line 60
    :cond_1
    iget v2, p0, Landroid/graphics/BlurParams;->mode:I

    iget v3, p1, Landroid/graphics/BlurParams;->mode:I

    if-ne v2, v3, :cond_3

    .line 61
    iget-object v2, p0, Landroid/graphics/BlurParams;->area:Landroid/graphics/Rect;

    iget-object v3, p1, Landroid/graphics/BlurParams;->area:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 60
    if-eqz v2, :cond_3

    .line 62
    iget v2, p0, Landroid/graphics/BlurParams;->radius:F

    iget v3, p1, Landroid/graphics/BlurParams;->radius:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, v4

    if-gez v2, :cond_3

    .line 63
    iget v2, p0, Landroid/graphics/BlurParams;->lumaContrast:F

    iget v3, p1, Landroid/graphics/BlurParams;->lumaContrast:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, v4

    if-gez v2, :cond_3

    .line 64
    iget v2, p0, Landroid/graphics/BlurParams;->lumaBrightness:F

    iget v3, p1, Landroid/graphics/BlurParams;->lumaBrightness:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, v4

    if-gez v2, :cond_3

    .line 65
    iget v2, p0, Landroid/graphics/BlurParams;->chromaContrast:F

    iget v3, p1, Landroid/graphics/BlurParams;->chromaContrast:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, v4

    if-gez v2, :cond_3

    .line 66
    iget v2, p0, Landroid/graphics/BlurParams;->blendColor:I

    iget v3, p1, Landroid/graphics/BlurParams;->blendColor:I

    if-ne v2, v3, :cond_2

    .line 59
    :goto_0
    return v0

    :cond_2
    move v0, v1

    .line 66
    goto :goto_0

    :cond_3
    move v0, v1

    .line 59
    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 79
    iget v0, p0, Landroid/graphics/BlurParams;->mode:I

    if-eqz v0, :cond_0

    .line 80
    iget v0, p0, Landroid/graphics/BlurParams;->radius:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3c23d70a    # 0.01f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 78
    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 81
    :cond_1
    iget-object v0, p0, Landroid/graphics/BlurParams;->area:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    goto :goto_0
.end method

.method public set(Landroid/graphics/BlurParams;)V
    .locals 2
    .param p1, "src"    # Landroid/graphics/BlurParams;

    .prologue
    .line 86
    iget v0, p1, Landroid/graphics/BlurParams;->mode:I

    iput v0, p0, Landroid/graphics/BlurParams;->mode:I

    .line 87
    iget-object v0, p0, Landroid/graphics/BlurParams;->area:Landroid/graphics/Rect;

    iget-object v1, p1, Landroid/graphics/BlurParams;->area:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 88
    iget v0, p1, Landroid/graphics/BlurParams;->radius:F

    iput v0, p0, Landroid/graphics/BlurParams;->radius:F

    .line 89
    iget v0, p1, Landroid/graphics/BlurParams;->lumaContrast:F

    iput v0, p0, Landroid/graphics/BlurParams;->lumaContrast:F

    .line 90
    iget v0, p1, Landroid/graphics/BlurParams;->lumaBrightness:F

    iput v0, p0, Landroid/graphics/BlurParams;->lumaBrightness:F

    .line 91
    iget v0, p1, Landroid/graphics/BlurParams;->chromaContrast:F

    iput v0, p0, Landroid/graphics/BlurParams;->chromaContrast:F

    .line 92
    iget v0, p1, Landroid/graphics/BlurParams;->blendColor:I

    iput v0, p0, Landroid/graphics/BlurParams;->blendColor:I

    .line 85
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 125
    iget v0, p0, Landroid/graphics/BlurParams;->mode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    iget-object v0, p0, Landroid/graphics/BlurParams;->area:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 127
    iget v0, p0, Landroid/graphics/BlurParams;->radius:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 128
    iget v0, p0, Landroid/graphics/BlurParams;->lumaContrast:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 129
    iget v0, p0, Landroid/graphics/BlurParams;->lumaBrightness:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 130
    iget v0, p0, Landroid/graphics/BlurParams;->chromaContrast:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 131
    iget v0, p0, Landroid/graphics/BlurParams;->blendColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    return-void
.end method

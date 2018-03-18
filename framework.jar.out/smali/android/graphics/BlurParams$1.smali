.class final Landroid/graphics/BlurParams$1;
.super Ljava/lang/Object;
.source "BlurParams.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/BlurParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/graphics/BlurParams;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/graphics/BlurParams;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 137
    new-instance v0, Landroid/graphics/BlurParams;

    invoke-direct {v0}, Landroid/graphics/BlurParams;-><init>()V

    .line 138
    .local v0, "bp":Landroid/graphics/BlurParams;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/graphics/BlurParams;->mode:I

    .line 139
    sget-object v1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    iput-object v1, v0, Landroid/graphics/BlurParams;->area:Landroid/graphics/Rect;

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, v0, Landroid/graphics/BlurParams;->radius:F

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, v0, Landroid/graphics/BlurParams;->lumaContrast:F

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, v0, Landroid/graphics/BlurParams;->lumaBrightness:F

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, v0, Landroid/graphics/BlurParams;->chromaContrast:F

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/graphics/BlurParams;->blendColor:I

    .line 145
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 136
    invoke-virtual {p0, p1}, Landroid/graphics/BlurParams$1;->createFromParcel(Landroid/os/Parcel;)Landroid/graphics/BlurParams;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/graphics/BlurParams;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 150
    new-array v0, p1, [Landroid/graphics/BlurParams;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 149
    invoke-virtual {p0, p1}, Landroid/graphics/BlurParams$1;->newArray(I)[Landroid/graphics/BlurParams;

    move-result-object v0

    return-object v0
.end method

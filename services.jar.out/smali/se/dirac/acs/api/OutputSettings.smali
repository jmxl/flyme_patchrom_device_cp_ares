.class public Lse/dirac/acs/api/OutputSettings;
.super Ljava/lang/Object;
.source "OutputSettings.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CONTENTS_FILE_DESCRIPTOR:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lse/dirac/acs/api/OutputSettings;",
            ">;"
        }
    .end annotation
.end field

.field public static final NUM_EQ_BANDS:I = 0x7


# instance fields
.field public final device:Lse/dirac/acs/api/Device;

.field private diracEnabled:Z

.field private final eqBands:[F

.field private eqEnabled:Z

.field public final filter:Lse/dirac/acs/api/Filter;

.field private filterEnabled:Z

.field private sfxEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 194
    new-instance v0, Lse/dirac/acs/api/OutputSettings$1;

    invoke-direct {v0}, Lse/dirac/acs/api/OutputSettings$1;-><init>()V

    sput-object v0, Lse/dirac/acs/api/OutputSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x7

    .line 188
    new-array v0, v0, [F

    iput-object v0, p0, Lse/dirac/acs/api/OutputSettings;->eqBands:[F

    :try_start_0
    const-class v0, Lse/dirac/acs/api/Device;

    .line 241
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lse/dirac/acs/api/Device;

    iput-object v0, p0, Lse/dirac/acs/api/OutputSettings;->device:Lse/dirac/acs/api/Device;

    .line 242
    iget-object v0, p0, Lse/dirac/acs/api/OutputSettings;->device:Lse/dirac/acs/api/Device;

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    .line 245
    new-array v0, v0, [Z

    .line 246
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    const/4 v1, 0x0

    .line 248
    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lse/dirac/acs/api/OutputSettings;->diracEnabled:Z

    const/4 v1, 0x1

    .line 249
    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lse/dirac/acs/api/OutputSettings;->filterEnabled:Z

    const/4 v1, 0x2

    .line 250
    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lse/dirac/acs/api/OutputSettings;->sfxEnabled:Z

    const/4 v1, 0x3

    .line 251
    aget-boolean v0, v0, v1

    iput-boolean v0, p0, Lse/dirac/acs/api/OutputSettings;->eqEnabled:Z

    .line 253
    iget-object v0, p0, Lse/dirac/acs/api/OutputSettings;->eqBands:[F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readFloatArray([F)V

    const-class v0, Lse/dirac/acs/api/Filter;

    .line 255
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lse/dirac/acs/api/Filter;

    iput-object v0, p0, Lse/dirac/acs/api/OutputSettings;->filter:Lse/dirac/acs/api/Filter;

    .line 261
    return-void

    .line 243
    :cond_0
    new-instance v0, Landroid/os/BadParcelableException;

    const-string/jumbo v1, "No valid device in parcel"

    invoke-direct {v0, v1}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/os/BadParcelableException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 260
    :catch_0
    move-exception v0

    .line 257
    throw v0

    :catch_1
    move-exception v0

    .line 259
    new-instance v1, Landroid/os/BadParcelableException;

    invoke-direct {v1, v0}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lse/dirac/acs/api/OutputSettings$1;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lse/dirac/acs/api/OutputSettings;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lse/dirac/acs/api/Device;Lse/dirac/acs/api/Filter;)V
    .locals 2

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x7

    .line 188
    new-array v0, v0, [F

    iput-object v0, p0, Lse/dirac/acs/api/OutputSettings;->eqBands:[F

    .line 39
    if-eqz p1, :cond_1

    .line 41
    iput-object p1, p0, Lse/dirac/acs/api/OutputSettings;->device:Lse/dirac/acs/api/Device;

    .line 43
    if-nez p2, :cond_2

    .line 44
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "invalid filter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Not a valid device"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_2
    iget-object v0, p1, Lse/dirac/acs/api/Device;->filters:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    iput-object p2, p0, Lse/dirac/acs/api/OutputSettings;->filter:Lse/dirac/acs/api/Filter;

    .line 46
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 212
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 53
    check-cast p1, Lse/dirac/acs/api/OutputSettings;

    .line 54
    iget-object v1, p0, Lse/dirac/acs/api/OutputSettings;->device:Lse/dirac/acs/api/Device;

    iget-object v2, p1, Lse/dirac/acs/api/OutputSettings;->device:Lse/dirac/acs/api/Device;

    invoke-virtual {v1, v2}, Lse/dirac/acs/api/Device;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    :goto_0
    return v0

    .line 51
    :cond_1
    return v0

    .line 54
    :cond_2
    iget-object v1, p0, Lse/dirac/acs/api/OutputSettings;->filter:Lse/dirac/acs/api/Filter;

    iget-object v2, p1, Lse/dirac/acs/api/OutputSettings;->filter:Lse/dirac/acs/api/Filter;

    invoke-virtual {v1, v2}, Lse/dirac/acs/api/Filter;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lse/dirac/acs/api/OutputSettings;->diracEnabled:Z

    iget-boolean v2, p1, Lse/dirac/acs/api/OutputSettings;->diracEnabled:Z

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lse/dirac/acs/api/OutputSettings;->filterEnabled:Z

    iget-boolean v2, p1, Lse/dirac/acs/api/OutputSettings;->filterEnabled:Z

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lse/dirac/acs/api/OutputSettings;->sfxEnabled:Z

    iget-boolean v2, p1, Lse/dirac/acs/api/OutputSettings;->sfxEnabled:Z

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lse/dirac/acs/api/OutputSettings;->eqEnabled:Z

    iget-boolean v2, p1, Lse/dirac/acs/api/OutputSettings;->eqEnabled:Z

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lse/dirac/acs/api/OutputSettings;->eqBands:[F

    iget-object v2, p1, Lse/dirac/acs/api/OutputSettings;->eqBands:[F

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getDiracEnabled()Z
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Lse/dirac/acs/api/OutputSettings;->diracEnabled:Z

    return v0
.end method

.method public getEqBand(I)F
    .locals 3

    .prologue
    .line 107
    if-gez p1, :cond_1

    .line 108
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not a valid eq band"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x7

    .line 107
    if-ge p1, v0, :cond_0

    .line 110
    iget-object v0, p0, Lse/dirac/acs/api/OutputSettings;->eqBands:[F

    aget v0, v0, p1

    return v0
.end method

.method public getEqEnabled()Z
    .locals 1

    .prologue
    .line 96
    iget-boolean v0, p0, Lse/dirac/acs/api/OutputSettings;->eqEnabled:Z

    return v0
.end method

.method public getFilterEnabled()Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lse/dirac/acs/api/OutputSettings;->filterEnabled:Z

    return v0
.end method

.method public getSfxEnabled()Z
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Lse/dirac/acs/api/OutputSettings;->sfxEnabled:Z

    return v0
.end method

.method public setDiracEnabled(Z)Lse/dirac/acs/api/OutputSettings;
    .locals 0

    .prologue
    .line 119
    iput-boolean p1, p0, Lse/dirac/acs/api/OutputSettings;->diracEnabled:Z

    .line 120
    return-object p0
.end method

.method public setEqBand(IF)Lse/dirac/acs/api/OutputSettings;
    .locals 3

    .prologue
    .line 176
    if-gez p1, :cond_1

    .line 177
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not a valid eq band"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x7

    .line 176
    if-ge p1, v0, :cond_0

    .line 180
    iget-object v0, p0, Lse/dirac/acs/api/OutputSettings;->eqBands:[F

    aput p2, v0, p1

    .line 181
    return-object p0
.end method

.method public setEqEnabled(Z)Lse/dirac/acs/api/OutputSettings;
    .locals 2

    .prologue
    .line 161
    if-nez p1, :cond_1

    .line 164
    :cond_0
    iput-boolean p1, p0, Lse/dirac/acs/api/OutputSettings;->eqEnabled:Z

    .line 165
    return-object p0

    .line 161
    :cond_1
    iget-object v0, p0, Lse/dirac/acs/api/OutputSettings;->filter:Lse/dirac/acs/api/Filter;

    iget-boolean v0, v0, Lse/dirac/acs/api/Filter;->eqAvailable:Z

    if-nez v0, :cond_0

    .line 162
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "filter do not support EQ"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setFilterEnabled(Z)Lse/dirac/acs/api/OutputSettings;
    .locals 0

    .prologue
    .line 132
    iput-boolean p1, p0, Lse/dirac/acs/api/OutputSettings;->filterEnabled:Z

    .line 133
    return-object p0
.end method

.method public setSfxEnabled(Z)Lse/dirac/acs/api/OutputSettings;
    .locals 2

    .prologue
    .line 145
    if-nez p1, :cond_1

    .line 148
    :cond_0
    iput-boolean p1, p0, Lse/dirac/acs/api/OutputSettings;->sfxEnabled:Z

    .line 149
    return-object p0

    .line 145
    :cond_1
    iget-object v0, p0, Lse/dirac/acs/api/OutputSettings;->filter:Lse/dirac/acs/api/Filter;

    iget-boolean v0, v0, Lse/dirac/acs/api/Filter;->sfxAvailable:Z

    if-nez v0, :cond_0

    .line 146
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "filter do not support SFX"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 223
    iget-object v0, p0, Lse/dirac/acs/api/OutputSettings;->device:Lse/dirac/acs/api/Device;

    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    const/4 v0, 0x4

    .line 224
    new-array v0, v0, [Z

    iget-boolean v1, p0, Lse/dirac/acs/api/OutputSettings;->diracEnabled:Z

    aput-boolean v1, v0, v3

    const/4 v1, 0x1

    iget-boolean v2, p0, Lse/dirac/acs/api/OutputSettings;->filterEnabled:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x2

    iget-boolean v2, p0, Lse/dirac/acs/api/OutputSettings;->sfxEnabled:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x3

    iget-boolean v2, p0, Lse/dirac/acs/api/OutputSettings;->eqEnabled:Z

    aput-boolean v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 230
    iget-object v0, p0, Lse/dirac/acs/api/OutputSettings;->eqBands:[F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 231
    iget-object v0, p0, Lse/dirac/acs/api/OutputSettings;->filter:Lse/dirac/acs/api/Filter;

    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 232
    return-void
.end method

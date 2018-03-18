.class public Lcom/journeyui/smartpolicy/AppInfo;
.super Ljava/lang/Object;
.source "AppInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/journeyui/smartpolicy/AppInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/journeyui/smartpolicy/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final DTMF:I = 0x2

.field public static final DXVA:I = 0x1

.field public static final GAME_LEVEL_COMMON:I = 0x1

.field public static final GAME_LEVEL_LOW:I = 0x0

.field public static final RESOLUTION_1080P:I = 0x1

.field public static final RESOLUTION_NORMAL:I


# instance fields
.field public decoder:I

.field public factorId:J

.field public gameLevel:I

.field public packageName:Ljava/lang/String;

.field public resolution:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    new-instance v0, Lcom/journeyui/smartpolicy/AppInfo$1;

    invoke-direct {v0}, Lcom/journeyui/smartpolicy/AppInfo$1;-><init>()V

    sput-object v0, Lcom/journeyui/smartpolicy/AppInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/journeyui/smartpolicy/AppInfo;->factorId:J

    .line 16
    iput v2, p0, Lcom/journeyui/smartpolicy/AppInfo;->gameLevel:I

    .line 17
    iput v2, p0, Lcom/journeyui/smartpolicy/AppInfo;->resolution:I

    .line 18
    iput v2, p0, Lcom/journeyui/smartpolicy/AppInfo;->decoder:I

    .line 19
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/journeyui/smartpolicy/AppInfo;->packageName:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/journeyui/smartpolicy/AppInfo;->factorId:J

    .line 16
    iput v2, p0, Lcom/journeyui/smartpolicy/AppInfo;->gameLevel:I

    .line 17
    iput v2, p0, Lcom/journeyui/smartpolicy/AppInfo;->resolution:I

    .line 18
    iput v2, p0, Lcom/journeyui/smartpolicy/AppInfo;->decoder:I

    .line 19
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/journeyui/smartpolicy/AppInfo;->packageName:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/journeyui/smartpolicy/AppInfo;->factorId:J

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/journeyui/smartpolicy/AppInfo;->gameLevel:I

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/journeyui/smartpolicy/AppInfo;->resolution:I

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/journeyui/smartpolicy/AppInfo;->decoder:I

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/journeyui/smartpolicy/AppInfo;->packageName:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public constructor <init>(Lcom/journeyui/smartpolicy/AppInfo;)V
    .locals 3
    .param p1, "appInfo"    # Lcom/journeyui/smartpolicy/AppInfo;

    .prologue
    const/4 v2, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/journeyui/smartpolicy/AppInfo;->factorId:J

    .line 16
    iput v2, p0, Lcom/journeyui/smartpolicy/AppInfo;->gameLevel:I

    .line 17
    iput v2, p0, Lcom/journeyui/smartpolicy/AppInfo;->resolution:I

    .line 18
    iput v2, p0, Lcom/journeyui/smartpolicy/AppInfo;->decoder:I

    .line 19
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/journeyui/smartpolicy/AppInfo;->packageName:Ljava/lang/String;

    .line 34
    iget-wide v0, p1, Lcom/journeyui/smartpolicy/AppInfo;->factorId:J

    iput-wide v0, p0, Lcom/journeyui/smartpolicy/AppInfo;->factorId:J

    .line 35
    iget v0, p1, Lcom/journeyui/smartpolicy/AppInfo;->gameLevel:I

    iput v0, p0, Lcom/journeyui/smartpolicy/AppInfo;->gameLevel:I

    .line 36
    iget v0, p1, Lcom/journeyui/smartpolicy/AppInfo;->resolution:I

    iput v0, p0, Lcom/journeyui/smartpolicy/AppInfo;->resolution:I

    .line 37
    iget v0, p1, Lcom/journeyui/smartpolicy/AppInfo;->decoder:I

    iput v0, p0, Lcom/journeyui/smartpolicy/AppInfo;->decoder:I

    .line 38
    iget-object v0, p1, Lcom/journeyui/smartpolicy/AppInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/journeyui/smartpolicy/AppInfo;->packageName:Ljava/lang/String;

    .line 33
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "AppInfo["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/journeyui/smartpolicy/AppInfo;->factorId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/journeyui/smartpolicy/AppInfo;->gameLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/journeyui/smartpolicy/AppInfo;->resolution:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/journeyui/smartpolicy/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/journeyui/smartpolicy/AppInfo;->decoder:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/journeyui/smartpolicy/AppInfo;->factorId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 49
    iget v0, p0, Lcom/journeyui/smartpolicy/AppInfo;->gameLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 50
    iget v0, p0, Lcom/journeyui/smartpolicy/AppInfo;->resolution:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 51
    iget v0, p0, Lcom/journeyui/smartpolicy/AppInfo;->decoder:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    iget-object v0, p0, Lcom/journeyui/smartpolicy/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    return-void
.end method

.class public Lse/dirac/acs/api/Device;
.super Ljava/lang/Object;
.source "Device.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CONTENTS_FILE_DESCRIPTOR:I = 0x3

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lse/dirac/acs/api/Device;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final filterAvailable:Z

.field public final filters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lse/dirac/acs/api/Filter;",
            ">;"
        }
    .end annotation
.end field

.field public final id:J

.field public final name:Ljava/lang/String;

.field public final timeAdded:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    new-instance v0, Lse/dirac/acs/api/Device$1;

    invoke-direct {v0}, Lse/dirac/acs/api/Device$1;-><init>()V

    sput-object v0, Lse/dirac/acs/api/Device;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;JLjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List",
            "<",
            "Lse/dirac/acs/api/Filter;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-wide p1, p0, Lse/dirac/acs/api/Device;->id:J

    .line 105
    iput-object p3, p0, Lse/dirac/acs/api/Device;->name:Ljava/lang/String;

    .line 106
    iput-wide p4, p0, Lse/dirac/acs/api/Device;->timeAdded:J

    .line 107
    invoke-static {p6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lse/dirac/acs/api/Device;->filters:Ljava/util/List;

    .line 108
    invoke-interface {p6}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    iput-boolean v0, p0, Lse/dirac/acs/api/Device;->filterAvailable:Z

    .line 109
    return-void

    :cond_0
    const/4 v0, 0x1

    .line 108
    goto :goto_0
.end method

.method static synthetic access$000(Landroid/os/Parcel;)Lse/dirac/acs/api/Device;
    .locals 1

    .prologue
    .line 20
    invoke-static {p0}, Lse/dirac/acs/api/Device;->deviceFromParcel(Landroid/os/Parcel;)Lse/dirac/acs/api/Device;

    move-result-object v0

    return-object v0
.end method

.method private static deviceFromParcel(Landroid/os/Parcel;)Lse/dirac/acs/api/Device;
    .locals 7

    .prologue
    .line 125
    :try_start_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 126
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 127
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 129
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 131
    sget-object v0, Lse/dirac/acs/api/Filter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p0, v6, v0}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 133
    new-instance v0, Lse/dirac/acs/api/Device;

    invoke-direct/range {v0 .. v6}, Lse/dirac/acs/api/Device;-><init>(JLjava/lang/String;JLjava/util/List;)V
    :try_end_0
    .catch Landroid/os/BadParcelableException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    return-object v0

    :catch_0
    move-exception v0

    .line 135
    throw v0

    :catch_1
    move-exception v0

    .line 137
    new-instance v1, Landroid/os/BadParcelableException;

    invoke-direct {v1, v0}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x3

    .line 63
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 68
    if-nez p1, :cond_1

    .line 69
    :cond_0
    return v0

    .line 68
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    check-cast p1, Lse/dirac/acs/api/Device;

    .line 72
    iget-wide v2, p0, Lse/dirac/acs/api/Device;->id:J

    iget-wide v4, p1, Lse/dirac/acs/api/Device;->id:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 89
    iget-wide v0, p0, Lse/dirac/acs/api/Device;->id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 90
    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "Device\n"

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "\tID: "

    .line 78
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lse/dirac/acs/api/Device;->id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\tName: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lse/dirac/acs/api/Device;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    iget-object v0, p0, Lse/dirac/acs/api/Device;->filters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 81
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lse/dirac/acs/api/Filter;

    const-string/jumbo v3, "\tFilter: "

    .line 82
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 114
    iget-wide v0, p0, Lse/dirac/acs/api/Device;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 115
    iget-object v0, p0, Lse/dirac/acs/api/Device;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 116
    iget-wide v0, p0, Lse/dirac/acs/api/Device;->timeAdded:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 117
    iget-object v0, p0, Lse/dirac/acs/api/Device;->filters:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 118
    return-void
.end method

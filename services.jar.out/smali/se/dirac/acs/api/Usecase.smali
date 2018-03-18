.class public final enum Lse/dirac/acs/api/Usecase;
.super Ljava/lang/Enum;
.source "Usecase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lse/dirac/acs/api/Usecase;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lse/dirac/acs/api/Usecase;

.field public static final enum EXTERNAL_HEADSET:Lse/dirac/acs/api/Usecase;

.field public static final enum EXTERNAL_MRC:Lse/dirac/acs/api/Usecase;

.field public static final enum INTERNAL_CUSTOM1:Lse/dirac/acs/api/Usecase;

.field public static final enum INTERNAL_CUSTOM2:Lse/dirac/acs/api/Usecase;

.field public static final enum INTERNAL_CUSTOM3:Lse/dirac/acs/api/Usecase;

.field public static final enum INTERNAL_CUSTOM4:Lse/dirac/acs/api/Usecase;

.field public static final enum INTERNAL_CUSTOM5:Lse/dirac/acs/api/Usecase;

.field public static final enum INTERNAL_PANORAMA:Lse/dirac/acs/api/Usecase;

.field public static final enum INTERNAL_POWERSOUND:Lse/dirac/acs/api/Usecase;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 7
    new-instance v0, Lse/dirac/acs/api/Usecase;

    const-string/jumbo v1, "INTERNAL_POWERSOUND"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v4}, Lse/dirac/acs/api/Usecase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lse/dirac/acs/api/Usecase;->INTERNAL_POWERSOUND:Lse/dirac/acs/api/Usecase;

    .line 8
    new-instance v0, Lse/dirac/acs/api/Usecase;

    const-string/jumbo v1, "INTERNAL_PANORAMA"

    invoke-direct {v0, v1, v4, v5}, Lse/dirac/acs/api/Usecase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lse/dirac/acs/api/Usecase;->INTERNAL_PANORAMA:Lse/dirac/acs/api/Usecase;

    .line 9
    new-instance v0, Lse/dirac/acs/api/Usecase;

    const-string/jumbo v1, "EXTERNAL_HEADSET"

    invoke-direct {v0, v1, v5, v6}, Lse/dirac/acs/api/Usecase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lse/dirac/acs/api/Usecase;->EXTERNAL_HEADSET:Lse/dirac/acs/api/Usecase;

    .line 10
    new-instance v0, Lse/dirac/acs/api/Usecase;

    const-string/jumbo v1, "EXTERNAL_MRC"

    invoke-direct {v0, v1, v6, v7}, Lse/dirac/acs/api/Usecase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lse/dirac/acs/api/Usecase;->EXTERNAL_MRC:Lse/dirac/acs/api/Usecase;

    .line 11
    new-instance v0, Lse/dirac/acs/api/Usecase;

    const-string/jumbo v1, "INTERNAL_CUSTOM1"

    invoke-direct {v0, v1, v7, v8}, Lse/dirac/acs/api/Usecase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lse/dirac/acs/api/Usecase;->INTERNAL_CUSTOM1:Lse/dirac/acs/api/Usecase;

    .line 12
    new-instance v0, Lse/dirac/acs/api/Usecase;

    const-string/jumbo v1, "INTERNAL_CUSTOM2"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v8, v2}, Lse/dirac/acs/api/Usecase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lse/dirac/acs/api/Usecase;->INTERNAL_CUSTOM2:Lse/dirac/acs/api/Usecase;

    .line 13
    new-instance v0, Lse/dirac/acs/api/Usecase;

    const-string/jumbo v1, "INTERNAL_CUSTOM3"

    const/4 v2, 0x6

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lse/dirac/acs/api/Usecase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lse/dirac/acs/api/Usecase;->INTERNAL_CUSTOM3:Lse/dirac/acs/api/Usecase;

    .line 14
    new-instance v0, Lse/dirac/acs/api/Usecase;

    const-string/jumbo v1, "INTERNAL_CUSTOM4"

    const/4 v2, 0x7

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lse/dirac/acs/api/Usecase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lse/dirac/acs/api/Usecase;->INTERNAL_CUSTOM4:Lse/dirac/acs/api/Usecase;

    .line 15
    new-instance v0, Lse/dirac/acs/api/Usecase;

    const-string/jumbo v1, "INTERNAL_CUSTOM5"

    const/16 v2, 0x8

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lse/dirac/acs/api/Usecase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lse/dirac/acs/api/Usecase;->INTERNAL_CUSTOM5:Lse/dirac/acs/api/Usecase;

    const/16 v0, 0x9

    .line 6
    new-array v0, v0, [Lse/dirac/acs/api/Usecase;

    const/4 v1, 0x0

    sget-object v2, Lse/dirac/acs/api/Usecase;->INTERNAL_POWERSOUND:Lse/dirac/acs/api/Usecase;

    aput-object v2, v0, v1

    sget-object v1, Lse/dirac/acs/api/Usecase;->INTERNAL_PANORAMA:Lse/dirac/acs/api/Usecase;

    aput-object v1, v0, v4

    sget-object v1, Lse/dirac/acs/api/Usecase;->EXTERNAL_HEADSET:Lse/dirac/acs/api/Usecase;

    aput-object v1, v0, v5

    sget-object v1, Lse/dirac/acs/api/Usecase;->EXTERNAL_MRC:Lse/dirac/acs/api/Usecase;

    aput-object v1, v0, v6

    sget-object v1, Lse/dirac/acs/api/Usecase;->INTERNAL_CUSTOM1:Lse/dirac/acs/api/Usecase;

    aput-object v1, v0, v7

    sget-object v1, Lse/dirac/acs/api/Usecase;->INTERNAL_CUSTOM2:Lse/dirac/acs/api/Usecase;

    aput-object v1, v0, v8

    const/4 v1, 0x6

    sget-object v2, Lse/dirac/acs/api/Usecase;->INTERNAL_CUSTOM3:Lse/dirac/acs/api/Usecase;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lse/dirac/acs/api/Usecase;->INTERNAL_CUSTOM4:Lse/dirac/acs/api/Usecase;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lse/dirac/acs/api/Usecase;->INTERNAL_CUSTOM5:Lse/dirac/acs/api/Usecase;

    aput-object v2, v0, v1

    sput-object v0, Lse/dirac/acs/api/Usecase;->$VALUES:[Lse/dirac/acs/api/Usecase;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 31
    iput p3, p0, Lse/dirac/acs/api/Usecase;->value:I

    .line 32
    return-void
.end method

.method public static fromInt(I)Lse/dirac/acs/api/Usecase;
    .locals 3

    .prologue
    .line 22
    invoke-static {}, Lse/dirac/acs/api/Usecase;->values()[Lse/dirac/acs/api/Usecase;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unsupported value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 22
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lse/dirac/acs/api/Usecase;

    .line 23
    iget v2, v0, Lse/dirac/acs/api/Usecase;->value:I

    if-ne v2, p0, :cond_0

    .line 24
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lse/dirac/acs/api/Usecase;
    .locals 1

    .prologue
    const-class v0, Lse/dirac/acs/api/Usecase;

    .line 6
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lse/dirac/acs/api/Usecase;

    return-object v0
.end method

.method public static values()[Lse/dirac/acs/api/Usecase;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lse/dirac/acs/api/Usecase;->$VALUES:[Lse/dirac/acs/api/Usecase;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lse/dirac/acs/api/Usecase;

    return-object v0
.end method


# virtual methods
.method public toInt()I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lse/dirac/acs/api/Usecase;->value:I

    return v0
.end method

.class public final enum Landroid/widget/BubbleStyle$ArrowDirection;
.super Ljava/lang/Enum;
.source "BubbleStyle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/BubbleStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ArrowDirection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/widget/BubbleStyle$ArrowDirection;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/widget/BubbleStyle$ArrowDirection;

.field public static final enum Auto:Landroid/widget/BubbleStyle$ArrowDirection;

.field public static final enum Down:Landroid/widget/BubbleStyle$ArrowDirection;

.field public static final enum Left:Landroid/widget/BubbleStyle$ArrowDirection;

.field public static final enum None:Landroid/widget/BubbleStyle$ArrowDirection;

.field public static final enum Right:Landroid/widget/BubbleStyle$ArrowDirection;

.field public static final enum Up:Landroid/widget/BubbleStyle$ArrowDirection;

.field private static final intToTypeDict:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/widget/BubbleStyle$ArrowDirection;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 22
    new-instance v2, Landroid/widget/BubbleStyle$ArrowDirection;

    const-string/jumbo v3, "None"

    const/4 v4, -0x1

    invoke-direct {v2, v3, v1, v4}, Landroid/widget/BubbleStyle$ArrowDirection;-><init>(Ljava/lang/String;II)V

    sput-object v2, Landroid/widget/BubbleStyle$ArrowDirection;->None:Landroid/widget/BubbleStyle$ArrowDirection;

    .line 23
    new-instance v2, Landroid/widget/BubbleStyle$ArrowDirection;

    const-string/jumbo v3, "Auto"

    invoke-direct {v2, v3, v5, v1}, Landroid/widget/BubbleStyle$ArrowDirection;-><init>(Ljava/lang/String;II)V

    sput-object v2, Landroid/widget/BubbleStyle$ArrowDirection;->Auto:Landroid/widget/BubbleStyle$ArrowDirection;

    .line 24
    new-instance v2, Landroid/widget/BubbleStyle$ArrowDirection;

    const-string/jumbo v3, "Left"

    invoke-direct {v2, v3, v6, v5}, Landroid/widget/BubbleStyle$ArrowDirection;-><init>(Ljava/lang/String;II)V

    sput-object v2, Landroid/widget/BubbleStyle$ArrowDirection;->Left:Landroid/widget/BubbleStyle$ArrowDirection;

    .line 25
    new-instance v2, Landroid/widget/BubbleStyle$ArrowDirection;

    const-string/jumbo v3, "Up"

    invoke-direct {v2, v3, v7, v6}, Landroid/widget/BubbleStyle$ArrowDirection;-><init>(Ljava/lang/String;II)V

    sput-object v2, Landroid/widget/BubbleStyle$ArrowDirection;->Up:Landroid/widget/BubbleStyle$ArrowDirection;

    .line 26
    new-instance v2, Landroid/widget/BubbleStyle$ArrowDirection;

    const-string/jumbo v3, "Right"

    invoke-direct {v2, v3, v8, v7}, Landroid/widget/BubbleStyle$ArrowDirection;-><init>(Ljava/lang/String;II)V

    sput-object v2, Landroid/widget/BubbleStyle$ArrowDirection;->Right:Landroid/widget/BubbleStyle$ArrowDirection;

    .line 27
    new-instance v2, Landroid/widget/BubbleStyle$ArrowDirection;

    const-string/jumbo v3, "Down"

    const/4 v4, 0x5

    invoke-direct {v2, v3, v4, v8}, Landroid/widget/BubbleStyle$ArrowDirection;-><init>(Ljava/lang/String;II)V

    sput-object v2, Landroid/widget/BubbleStyle$ArrowDirection;->Down:Landroid/widget/BubbleStyle$ArrowDirection;

    .line 21
    const/4 v2, 0x6

    new-array v2, v2, [Landroid/widget/BubbleStyle$ArrowDirection;

    sget-object v3, Landroid/widget/BubbleStyle$ArrowDirection;->None:Landroid/widget/BubbleStyle$ArrowDirection;

    aput-object v3, v2, v1

    sget-object v3, Landroid/widget/BubbleStyle$ArrowDirection;->Auto:Landroid/widget/BubbleStyle$ArrowDirection;

    aput-object v3, v2, v5

    sget-object v3, Landroid/widget/BubbleStyle$ArrowDirection;->Left:Landroid/widget/BubbleStyle$ArrowDirection;

    aput-object v3, v2, v6

    sget-object v3, Landroid/widget/BubbleStyle$ArrowDirection;->Up:Landroid/widget/BubbleStyle$ArrowDirection;

    aput-object v3, v2, v7

    sget-object v3, Landroid/widget/BubbleStyle$ArrowDirection;->Right:Landroid/widget/BubbleStyle$ArrowDirection;

    aput-object v3, v2, v8

    sget-object v3, Landroid/widget/BubbleStyle$ArrowDirection;->Down:Landroid/widget/BubbleStyle$ArrowDirection;

    const/4 v4, 0x5

    aput-object v3, v2, v4

    sput-object v2, Landroid/widget/BubbleStyle$ArrowDirection;->$VALUES:[Landroid/widget/BubbleStyle$ArrowDirection;

    .line 29
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    sput-object v2, Landroid/widget/BubbleStyle$ArrowDirection;->intToTypeDict:Landroid/util/SparseArray;

    .line 32
    invoke-static {}, Landroid/widget/BubbleStyle$ArrowDirection;->values()[Landroid/widget/BubbleStyle$ArrowDirection;

    move-result-object v2

    array-length v3, v2

    .local v0, "type":Landroid/widget/BubbleStyle$ArrowDirection;
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 33
    sget-object v4, Landroid/widget/BubbleStyle$ArrowDirection;->intToTypeDict:Landroid/util/SparseArray;

    iget v5, v0, Landroid/widget/BubbleStyle$ArrowDirection;->mValue:I

    invoke-virtual {v4, v5, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 32
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 21
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .param p3, "value"    # I

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/BubbleStyle$ArrowDirection;->mValue:I

    .line 44
    iput p3, p0, Landroid/widget/BubbleStyle$ArrowDirection;->mValue:I

    .line 43
    return-void
.end method

.method public static valueOf(I)Landroid/widget/BubbleStyle$ArrowDirection;
    .locals 2
    .param p0, "value"    # I

    .prologue
    .line 48
    sget-object v1, Landroid/widget/BubbleStyle$ArrowDirection;->intToTypeDict:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/BubbleStyle$ArrowDirection;

    .line 49
    .local v0, "type":Landroid/widget/BubbleStyle$ArrowDirection;
    if-nez v0, :cond_0

    .line 50
    sget-object v1, Landroid/widget/BubbleStyle$ArrowDirection;->Auto:Landroid/widget/BubbleStyle$ArrowDirection;

    return-object v1

    .line 51
    :cond_0
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/widget/BubbleStyle$ArrowDirection;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 21
    const-class v0, Landroid/widget/BubbleStyle$ArrowDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/widget/BubbleStyle$ArrowDirection;

    return-object v0
.end method

.method public static values()[Landroid/widget/BubbleStyle$ArrowDirection;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Landroid/widget/BubbleStyle$ArrowDirection;->$VALUES:[Landroid/widget/BubbleStyle$ArrowDirection;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Landroid/widget/BubbleStyle$ArrowDirection;->mValue:I

    return v0
.end method

.method public isDown()Z
    .locals 1

    .prologue
    .line 67
    sget-object v0, Landroid/widget/BubbleStyle$ArrowDirection;->Down:Landroid/widget/BubbleStyle$ArrowDirection;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLeft()Z
    .locals 1

    .prologue
    .line 55
    sget-object v0, Landroid/widget/BubbleStyle$ArrowDirection;->Left:Landroid/widget/BubbleStyle$ArrowDirection;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRight()Z
    .locals 1

    .prologue
    .line 63
    sget-object v0, Landroid/widget/BubbleStyle$ArrowDirection;->Right:Landroid/widget/BubbleStyle$ArrowDirection;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUp()Z
    .locals 1

    .prologue
    .line 59
    sget-object v0, Landroid/widget/BubbleStyle$ArrowDirection;->Up:Landroid/widget/BubbleStyle$ArrowDirection;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

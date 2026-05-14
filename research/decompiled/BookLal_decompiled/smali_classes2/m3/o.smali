.class public final enum Lm3/o;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic b:[Lm3/o;


# instance fields
.field public final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lm3/o;

    const-string v1, "HEADER_TABLE_SIZE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lm3/o;-><init>(Ljava/lang/String;II)V

    new-instance v1, Lm3/o;

    const-string v2, "ENABLE_PUSH"

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Lm3/o;-><init>(Ljava/lang/String;II)V

    new-instance v2, Lm3/o;

    const-string v3, "MAX_CONCURRENT_STREAMS"

    const/4 v5, 0x4

    invoke-direct {v2, v3, v4, v5}, Lm3/o;-><init>(Ljava/lang/String;II)V

    new-instance v3, Lm3/o;

    const-string v4, "MAX_FRAME_SIZE"

    const/4 v6, 0x3

    const/4 v7, 0x5

    invoke-direct {v3, v4, v6, v7}, Lm3/o;-><init>(Ljava/lang/String;II)V

    new-instance v4, Lm3/o;

    const-string v6, "MAX_HEADER_LIST_SIZE"

    const/4 v8, 0x6

    invoke-direct {v4, v6, v5, v8}, Lm3/o;-><init>(Ljava/lang/String;II)V

    new-instance v5, Lm3/o;

    const-string v6, "INITIAL_WINDOW_SIZE"

    const/4 v8, 0x7

    invoke-direct {v5, v6, v7, v8}, Lm3/o;-><init>(Ljava/lang/String;II)V

    filled-new-array/range {v0 .. v5}, [Lm3/o;

    move-result-object v0

    sput-object v0, Lm3/o;->b:[Lm3/o;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lm3/o;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lm3/o;
    .locals 1

    const-class v0, Lm3/o;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lm3/o;

    return-object p0
.end method

.method public static values()[Lm3/o;
    .locals 1

    sget-object v0, Lm3/o;->b:[Lm3/o;

    invoke-virtual {v0}, [Lm3/o;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lm3/o;

    return-object v0
.end method

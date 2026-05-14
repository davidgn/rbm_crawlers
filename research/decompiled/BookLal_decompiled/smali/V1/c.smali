.class public final enum LV1/c;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/encoders/proto/ProtoEnum;


# static fields
.field public static final enum b:LV1/c;

.field public static final enum c:LV1/c;

.field public static final enum d:LV1/c;

.field public static final enum e:LV1/c;

.field public static final enum f:LV1/c;

.field public static final enum l:LV1/c;

.field public static final enum m:LV1/c;

.field public static final synthetic n:[LV1/c;


# instance fields
.field public final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, LV1/c;

    const-string v1, "REASON_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, LV1/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, LV1/c;->b:LV1/c;

    new-instance v1, LV1/c;

    const-string v2, "MESSAGE_TOO_OLD"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, LV1/c;-><init>(Ljava/lang/String;II)V

    sput-object v1, LV1/c;->c:LV1/c;

    new-instance v2, LV1/c;

    const-string v3, "CACHE_FULL"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, LV1/c;-><init>(Ljava/lang/String;II)V

    sput-object v2, LV1/c;->d:LV1/c;

    new-instance v3, LV1/c;

    const-string v4, "PAYLOAD_TOO_BIG"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, LV1/c;-><init>(Ljava/lang/String;II)V

    sput-object v3, LV1/c;->e:LV1/c;

    new-instance v4, LV1/c;

    const-string v5, "MAX_RETRIES_REACHED"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, LV1/c;-><init>(Ljava/lang/String;II)V

    sput-object v4, LV1/c;->f:LV1/c;

    new-instance v5, LV1/c;

    const-string v6, "INVALID_PAYLOD"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7, v7}, LV1/c;-><init>(Ljava/lang/String;II)V

    sput-object v5, LV1/c;->l:LV1/c;

    new-instance v6, LV1/c;

    const-string v7, "SERVER_ERROR"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8, v8}, LV1/c;-><init>(Ljava/lang/String;II)V

    sput-object v6, LV1/c;->m:LV1/c;

    filled-new-array/range {v0 .. v6}, [LV1/c;

    move-result-object v0

    sput-object v0, LV1/c;->n:[LV1/c;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, LV1/c;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LV1/c;
    .locals 1

    const-class v0, LV1/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LV1/c;

    return-object p0
.end method

.method public static values()[LV1/c;
    .locals 1

    sget-object v0, LV1/c;->n:[LV1/c;

    invoke-virtual {v0}, [LV1/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LV1/c;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    iget v0, p0, LV1/c;->a:I

    return v0
.end method

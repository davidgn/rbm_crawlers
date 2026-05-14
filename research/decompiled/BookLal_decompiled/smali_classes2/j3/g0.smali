.class public final enum Lj3/g0;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lj3/g0;

.field public static final enum b:Lj3/g0;

.field public static final enum c:Lj3/g0;

.field public static final synthetic d:[Lj3/g0;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lj3/g0;

    const-string v1, "UNARY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lj3/g0;->a:Lj3/g0;

    new-instance v1, Lj3/g0;

    const-string v2, "CLIENT_STREAMING"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v2, Lj3/g0;

    const-string v3, "SERVER_STREAMING"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lj3/g0;->b:Lj3/g0;

    new-instance v3, Lj3/g0;

    const-string v4, "BIDI_STREAMING"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lj3/g0;->c:Lj3/g0;

    new-instance v4, Lj3/g0;

    const-string v5, "UNKNOWN"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    filled-new-array {v0, v1, v2, v3, v4}, [Lj3/g0;

    move-result-object v0

    sput-object v0, Lj3/g0;->d:[Lj3/g0;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lj3/g0;
    .locals 1

    const-class v0, Lj3/g0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lj3/g0;

    return-object p0
.end method

.method public static values()[Lj3/g0;
    .locals 1

    sget-object v0, Lj3/g0;->d:[Lj3/g0;

    invoke-virtual {v0}, [Lj3/g0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lj3/g0;

    return-object v0
.end method

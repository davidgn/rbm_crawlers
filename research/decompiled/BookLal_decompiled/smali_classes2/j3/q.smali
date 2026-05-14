.class public final enum Lj3/q;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lj3/q;

.field public static final enum b:Lj3/q;

.field public static final enum c:Lj3/q;

.field public static final enum d:Lj3/q;

.field public static final enum e:Lj3/q;

.field public static final synthetic f:[Lj3/q;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lj3/q;

    const-string v1, "CONNECTING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lj3/q;->a:Lj3/q;

    new-instance v1, Lj3/q;

    const-string v2, "READY"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lj3/q;->b:Lj3/q;

    new-instance v2, Lj3/q;

    const-string v3, "TRANSIENT_FAILURE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lj3/q;->c:Lj3/q;

    new-instance v3, Lj3/q;

    const-string v4, "IDLE"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lj3/q;->d:Lj3/q;

    new-instance v4, Lj3/q;

    const-string v5, "SHUTDOWN"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lj3/q;->e:Lj3/q;

    filled-new-array {v0, v1, v2, v3, v4}, [Lj3/q;

    move-result-object v0

    sput-object v0, Lj3/q;->f:[Lj3/q;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lj3/q;
    .locals 1

    const-class v0, Lj3/q;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lj3/q;

    return-object p0
.end method

.method public static values()[Lj3/q;
    .locals 1

    sget-object v0, Lj3/q;->f:[Lj3/q;

    invoke-virtual {v0}, [Lj3/q;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lj3/q;

    return-object v0
.end method

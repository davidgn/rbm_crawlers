.class public final enum Lt4/v;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lt4/v;

.field public static final enum b:Lt4/v;

.field public static final enum c:Lt4/v;

.field public static final synthetic d:[Lt4/v;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lt4/v;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lt4/v;->a:Lt4/v;

    new-instance v1, Lt4/v;

    const-string v2, "LAZY"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lt4/v;->b:Lt4/v;

    new-instance v2, Lt4/v;

    const-string v3, "ATOMIC"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lt4/v;

    const-string v4, "UNDISPATCHED"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lt4/v;->c:Lt4/v;

    filled-new-array {v0, v1, v2, v3}, [Lt4/v;

    move-result-object v0

    sput-object v0, Lt4/v;->d:[Lt4/v;

    invoke-static {v0}, LS4/b;->m([Ljava/lang/Enum;)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lt4/v;
    .locals 1

    const-class v0, Lt4/v;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lt4/v;

    return-object p0
.end method

.method public static values()[Lt4/v;
    .locals 1

    sget-object v0, Lt4/v;->d:[Lt4/v;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lt4/v;

    return-object v0
.end method

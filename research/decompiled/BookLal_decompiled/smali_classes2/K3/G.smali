.class public final enum LK3/G;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements LE3/b;


# static fields
.field public static final enum a:LK3/G;

.field public static final synthetic b:[LK3/G;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LK3/G;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, LK3/G;->a:LK3/G;

    filled-new-array {v0}, [LK3/G;

    move-result-object v0

    sput-object v0, LK3/G;->b:[LK3/G;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LK3/G;
    .locals 1

    const-class v0, LK3/G;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LK3/G;

    return-object p0
.end method

.method public static values()[LK3/G;
    .locals 1

    sget-object v0, LK3/G;->b:[LK3/G;

    invoke-virtual {v0}, [LK3/G;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LK3/G;

    return-object v0
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, LT4/b;

    const-wide v0, 0x7fffffffffffffffL

    invoke-interface {p1, v0, v1}, LT4/b;->f(J)V

    return-void
.end method

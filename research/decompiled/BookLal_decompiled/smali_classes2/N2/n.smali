.class public final enum LN2/n;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field public static final enum a:LN2/n;

.field public static final synthetic b:[LN2/n;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LN2/n;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, LN2/n;->a:LN2/n;

    filled-new-array {v0}, [LN2/n;

    move-result-object v0

    sput-object v0, LN2/n;->b:[LN2/n;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LN2/n;
    .locals 1

    const-class v0, LN2/n;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LN2/n;

    return-object p0
.end method

.method public static values()[LN2/n;
    .locals 1

    sget-object v0, LN2/n;->b:[LN2/n;

    invoke-virtual {v0}, [LN2/n;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LN2/n;

    return-object v0
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "MoreExecutors.directExecutor()"

    return-object v0
.end method

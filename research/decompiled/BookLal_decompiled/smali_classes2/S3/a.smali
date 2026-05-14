.class public final enum LS3/a;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;
.implements LE3/c;


# static fields
.field public static final enum a:LS3/a;

.field public static final synthetic b:[LS3/a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LS3/a;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, LS3/a;->a:LS3/a;

    filled-new-array {v0}, [LS3/a;

    move-result-object v0

    sput-object v0, LS3/a;->b:[LS3/a;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LS3/a;
    .locals 1

    const-class v0, LS3/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LS3/a;

    return-object p0
.end method

.method public static values()[LS3/a;
    .locals 1

    sget-object v0, LS3/a;->b:[LS3/a;

    invoke-virtual {v0}, [LS3/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LS3/a;

    return-object v0
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method public final call()Ljava/lang/Object;
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.class public final enum LF3/b;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements LH3/c;


# static fields
.field public static final enum a:LF3/b;

.field public static final synthetic b:[LF3/b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, LF3/b;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, LF3/b;->a:LF3/b;

    new-instance v1, LF3/b;

    const-string v2, "NEVER"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    filled-new-array {v0, v1}, [LF3/b;

    move-result-object v0

    sput-object v0, LF3/b;->b:[LF3/b;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LF3/b;
    .locals 1

    const-class v0, LF3/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LF3/b;

    return-object p0
.end method

.method public static values()[LF3/b;
    .locals 1

    sget-object v0, LF3/b;->b:[LF3/b;

    invoke-virtual {v0}, [LF3/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LF3/b;

    return-object v0
.end method


# virtual methods
.method public final b()V
    .locals 0

    return-void
.end method

.method public final clear()V
    .locals 0

    return-void
.end method

.method public final g(I)I
    .locals 0

    const/4 p1, 0x2

    return p1
.end method

.method public final isEmpty()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final offer(Ljava/lang/Object;)Z
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Should not be called!"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final poll()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

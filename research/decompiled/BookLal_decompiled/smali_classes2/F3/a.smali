.class public final enum LF3/a;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements LB3/b;


# static fields
.field public static final enum a:LF3/a;

.field public static final synthetic b:[LF3/a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LF3/a;

    const-string v1, "DISPOSED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, LF3/a;->a:LF3/a;

    filled-new-array {v0}, [LF3/a;

    move-result-object v0

    sput-object v0, LF3/a;->b:[LF3/a;

    return-void
.end method

.method public static a(Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 2

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LB3/b;

    sget-object v1, LF3/a;->a:LF3/a;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LB3/b;

    if-eq p0, v1, :cond_0

    if-eqz p0, :cond_0

    invoke-interface {p0}, LB3/b;->b()V

    :cond_0
    return-void
.end method

.method public static c(LB3/b;)Z
    .locals 1

    sget-object v0, LF3/a;->a:LF3/a;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static e(Ljava/util/concurrent/atomic/AtomicReference;LB3/b;)Z
    .locals 2

    :goto_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LB3/b;

    sget-object v1, LF3/a;->a:LF3/a;

    if-ne v0, v1, :cond_1

    if-eqz p1, :cond_0

    invoke-interface {p1}, LB3/b;->b()V

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-virtual {p0, v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eq v1, v0, :cond_1

    goto :goto_0
.end method

.method public static f()V
    .locals 2

    new-instance v0, LC3/e;

    const-string v1, "Disposable already set!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, LL4/l;->y(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static g(Ljava/util/concurrent/atomic/AtomicReference;LB3/b;)Z
    .locals 1

    const-string v0, "d is null"

    invoke-static {p1, v0}, LG3/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, LB3/b;->b()V

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    sget-object p1, LF3/a;->a:LF3/a;

    if-eq p0, p1, :cond_2

    invoke-static {}, LF3/a;->f()V

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static h(LB3/b;LB3/b;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "next is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, LL4/l;->y(Ljava/lang/Throwable;)V

    return v0

    :cond_0
    if-eqz p0, :cond_1

    invoke-interface {p1}, LB3/b;->b()V

    invoke-static {}, LF3/a;->f()V

    return v0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)LF3/a;
    .locals 1

    const-class v0, LF3/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LF3/a;

    return-object p0
.end method

.method public static values()[LF3/a;
    .locals 1

    sget-object v0, LF3/a;->b:[LF3/a;

    invoke-virtual {v0}, [LF3/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LF3/a;

    return-object v0
.end method


# virtual methods
.method public final b()V
    .locals 0

    return-void
.end method

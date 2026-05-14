.class public final LN2/k;
.super LS4/b;
.source "SourceFile"


# static fields
.field public static final g:Lsun/misc/Unsafe;

.field public static final h:J

.field public static final i:J

.field public static final j:J

.field public static final k:J

.field public static final l:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-class v0, LN2/l;

    :try_start_0
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :try_start_1
    new-instance v1, LN2/j;

    invoke-direct {v1}, LN2/j;-><init>()V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/misc/Unsafe;
    :try_end_1
    .catch Ljava/security/PrivilegedActionException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_0
    :try_start_2
    const-class v2, LN2/m;

    const-string v3, "m"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v1, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v3

    sput-wide v3, LN2/k;->i:J

    const-string v3, "l"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v1, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v3

    sput-wide v3, LN2/k;->h:J

    const-string v3, "f"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, LN2/k;->j:J

    const-string v2, "a"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, LN2/k;->k:J

    const-string v2, "b"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, LN2/k;->l:J

    sput-object v1, LN2/k;->g:Lsun/misc/Unsafe;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catch_1
    move-exception v0

    invoke-static {v0}, LJ2/l;->a(Ljava/lang/Throwable;)V

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not initialize intrinsics"

    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public final A(LN2/l;Ljava/lang/Thread;)V
    .locals 3

    sget-object v0, LN2/k;->g:Lsun/misc/Unsafe;

    sget-wide v1, LN2/k;->k:J

    invoke-virtual {v0, p1, v1, v2, p2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method public final d(LN2/m;LN2/d;LN2/d;)Z
    .locals 6

    sget-object v0, LN2/k;->g:Lsun/misc/Unsafe;

    sget-wide v2, LN2/k;->h:J

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, LN2/h;->a(Lsun/misc/Unsafe;LN2/m;JLN2/d;LN2/d;)Z

    move-result p1

    return p1
.end method

.method public final e(LN2/m;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 6

    sget-object v0, LN2/k;->g:Lsun/misc/Unsafe;

    sget-wide v2, LN2/k;->j:J

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, LN2/i;->a(Lsun/misc/Unsafe;LN2/m;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final f(LN2/m;LN2/l;LN2/l;)Z
    .locals 6

    sget-object v0, LN2/k;->g:Lsun/misc/Unsafe;

    sget-wide v2, LN2/k;->i:J

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, LN2/g;->a(Lsun/misc/Unsafe;LN2/m;JLN2/l;LN2/l;)Z

    move-result p1

    return p1
.end method

.method public final n(LN2/m;)LN2/d;
    .locals 3

    sget-object v0, LN2/d;->d:LN2/d;

    :cond_0
    iget-object v1, p1, LN2/m;->l:LN2/d;

    if-ne v0, v1, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p0, p1, v1, v0}, LN2/k;->d(LN2/m;LN2/d;LN2/d;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1
.end method

.method public final o(LN2/m;)LN2/l;
    .locals 3

    sget-object v0, LN2/l;->c:LN2/l;

    :cond_0
    iget-object v1, p1, LN2/m;->m:LN2/l;

    if-ne v0, v1, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p0, p1, v1, v0}, LN2/k;->f(LN2/m;LN2/l;LN2/l;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1
.end method

.method public final z(LN2/l;LN2/l;)V
    .locals 3

    sget-object v0, LN2/k;->g:Lsun/misc/Unsafe;

    sget-wide v1, LN2/k;->l:J

    invoke-virtual {v0, p1, v1, v2, p2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

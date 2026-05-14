.class public final Lt4/j;
.super Lt4/Y;
.source "SourceFile"

# interfaces
.implements Lt4/i;


# instance fields
.field public final e:Lt4/g0;


# direct methods
.method public constructor <init>(Lt4/g0;)V
    .locals 0

    invoke-direct {p0}, Ly4/k;-><init>()V

    iput-object p1, p0, Lt4/j;->e:Lt4/g0;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)Z
    .locals 1

    invoke-virtual {p0}, Lt4/a0;->j()Lt4/g0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lt4/g0;->r(Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method

.method public final bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lt4/j;->k(Ljava/lang/Throwable;)V

    sget-object p1, LY3/j;->a:LY3/j;

    return-object p1
.end method

.method public final k(Ljava/lang/Throwable;)V
    .locals 1

    invoke-virtual {p0}, Lt4/a0;->j()Lt4/g0;

    move-result-object p1

    iget-object v0, p0, Lt4/j;->e:Lt4/g0;

    invoke-virtual {v0, p1}, Lt4/g0;->o(Ljava/lang/Object;)Z

    return-void
.end method

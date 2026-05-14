.class public final Ln4/b;
.super Ln4/a;
.source "SourceFile"


# instance fields
.field public final c:LH4/c;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ln4/d;-><init>()V

    new-instance v0, LH4/c;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, LH4/c;-><init>(I)V

    iput-object v0, p0, Ln4/b;->c:LH4/c;

    return-void
.end method


# virtual methods
.method public final f()Ljava/util/Random;
    .locals 2

    iget-object v0, p0, Ln4/b;->c:LH4/c;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "implStorage.get()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/i;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/Random;

    return-object v0
.end method

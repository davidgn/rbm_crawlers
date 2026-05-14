.class public final Ls3/a;
.super Lj3/B;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lj3/r0;


# direct methods
.method public constructor <init>(Lj3/r0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls3/a;->a:Lj3/r0;

    return-void
.end method


# virtual methods
.method public final c(Ll3/f1;)Lj3/N;
    .locals 0

    iget-object p1, p0, Ls3/a;->a:Lj3/r0;

    invoke-static {p1}, Lj3/N;->a(Lj3/r0;)Lj3/N;

    move-result-object p1

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, LE4/d;

    const-class v1, Ls3/a;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, LE4/d;-><init>(Ljava/lang/String;)V

    const-string v1, "error"

    iget-object v2, p0, Ls3/a;->a:Lj3/r0;

    invoke-virtual {v0, v2, v1}, LE4/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, LE4/d;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public final Lw4/c;
.super Ld4/c;
.source "SourceFile"


# instance fields
.field public a:Lw4/d;

.field public b:Ljava/lang/Object;

.field public synthetic c:Ljava/lang/Object;

.field public final synthetic d:Lw4/d;

.field public e:I


# direct methods
.method public constructor <init>(Lw4/d;Ld4/c;)V
    .locals 0

    iput-object p1, p0, Lw4/c;->d:Lw4/d;

    invoke-direct {p0, p2}, Ld4/c;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lw4/c;->c:Ljava/lang/Object;

    iget p1, p0, Lw4/c;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lw4/c;->e:I

    iget-object p1, p0, Lw4/c;->d:Lw4/d;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lw4/d;->b(Ljava/lang/Object;Ld4/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

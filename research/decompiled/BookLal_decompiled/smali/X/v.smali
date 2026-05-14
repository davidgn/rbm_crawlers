.class public final LX/v;
.super Ld4/c;
.source "SourceFile"


# instance fields
.field public a:LX/F;

.field public b:Ljava/lang/Object;

.field public c:Ljava/io/Serializable;

.field public d:Ljava/lang/Object;

.field public e:LX/x;

.field public f:Ljava/util/Iterator;

.field public synthetic l:Ljava/lang/Object;

.field public final synthetic m:LX/F;

.field public n:I


# direct methods
.method public constructor <init>(LX/F;Ld4/c;)V
    .locals 0

    iput-object p1, p0, LX/v;->m:LX/F;

    invoke-direct {p0, p2}, Ld4/c;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, LX/v;->l:Ljava/lang/Object;

    iget p1, p0, LX/v;->n:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, LX/v;->n:I

    iget-object p1, p0, LX/v;->m:LX/F;

    invoke-virtual {p1, p0}, LX/F;->c(Ld4/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

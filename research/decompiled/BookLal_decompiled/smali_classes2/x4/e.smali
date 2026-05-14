.class public final Lx4/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/coroutines/Continuation;


# static fields
.field public static final a:Lx4/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lx4/e;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lx4/e;->a:Lx4/e;

    return-void
.end method


# virtual methods
.method public final getContext()Lb4/h;
    .locals 1

    sget-object v0, Lb4/i;->a:Lb4/i;

    return-object v0
.end method

.method public final resumeWith(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

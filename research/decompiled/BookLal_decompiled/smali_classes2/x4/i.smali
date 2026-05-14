.class public final synthetic Lx4/i;
.super Lkotlin/jvm/internal/h;
.source "SourceFile"

# interfaces
.implements Lk4/p;


# static fields
.field public static final a:Lx4/i;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v6, Lx4/i;

    const-string v4, "emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;"

    const/4 v5, 0x0

    const/4 v1, 0x3

    const-class v2, Lw4/b;

    const-string v3, "emit"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/h;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v6, Lx4/i;->a:Lx4/i;

    return-void
.end method

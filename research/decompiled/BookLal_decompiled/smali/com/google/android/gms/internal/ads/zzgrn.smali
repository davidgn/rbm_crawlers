.class final synthetic Lcom/google/android/gms/internal/ads/zzgrn;
.super Lkotlin/jvm/internal/h;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# static fields
.field public static final zza:Lcom/google/android/gms/internal/ads/zzgrn;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgrn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgrn;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgrn;->zza:Lcom/google/android/gms/internal/ads/zzgrn;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const-class v2, Lcom/google/android/gms/internal/ads/zzgrp;

    const-string v3, "lockWithoutOwner"

    const/4 v1, 0x2

    const-string v4, "lockWithoutOwner(Lkotlinx/coroutines/sync/Mutex;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;"

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/h;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LB4/a;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzgrp;->zzb(LB4/a;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

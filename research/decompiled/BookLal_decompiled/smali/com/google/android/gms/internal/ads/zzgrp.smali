.class public final Lcom/google/android/gms/internal/ads/zzgrp;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final zza(Lt4/u;Lcom/google/android/gms/internal/ads/zzgrm;Lkotlin/jvm/functions/Function2;)Lt4/z;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coroutineSequence"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lt4/v;->c:Lt4/v;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgro;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lcom/google/android/gms/internal/ads/zzgro;-><init>(Lcom/google/android/gms/internal/ads/zzgrm;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/4 p1, 0x1

    invoke-static {p0, v0, v1, p1}, Lt4/w;->b(Lt4/u;Lt4/v;Lkotlin/jvm/functions/Function2;I)Lt4/A;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic zzb(LB4/a;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzgrp;->zzd(LB4/a;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic zzc(LB4/a;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzgrp;->zze(LB4/a;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static final zzd(LB4/a;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p0, p1}, LB4/a;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lc4/a;->a:Lc4/a;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, LY3/j;->a:LY3/j;

    return-object p0
.end method

.method private static final zze(LB4/a;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgrn;->zza:Lcom/google/android/gms/internal/ads/zzgrn;

    invoke-static {v0, p0, p1}, Lc4/b;->wrapWithContinuationImpl(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    sget-object v0, Lc4/a;->a:Lc4/a;

    if-eq p0, v0, :cond_0

    invoke-static {p1}, Lc4/b;->a(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    sget-object v1, LY3/j;->a:LY3/j;

    invoke-interface {p0, v1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    :cond_0
    const-string p0, "frame"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

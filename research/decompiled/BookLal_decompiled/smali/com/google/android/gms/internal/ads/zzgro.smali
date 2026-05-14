.class final Lcom/google/android/gms/internal/ads/zzgro;
.super Ld4/h;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field zza:Ljava/lang/Object;

.field zzb:I

.field final synthetic zzc:Lcom/google/android/gms/internal/ads/zzgrm;

.field final synthetic zzd:Lkotlin/jvm/functions/Function2;

.field private synthetic zze:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzgrm;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgro;->zzc:Lcom/google/android/gms/internal/ads/zzgrm;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgro;->zzd:Lkotlin/jvm/functions/Function2;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ld4/h;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgro;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgro;->zzc:Lcom/google/android/gms/internal/ads/zzgrm;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgro;->zzd:Lkotlin/jvm/functions/Function2;

    invoke-direct {v0, v1, v2, p2}, Lcom/google/android/gms/internal/ads/zzgro;-><init>(Lcom/google/android/gms/internal/ads/zzgrm;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/google/android/gms/internal/ads/zzgro;->zze:Ljava/lang/Object;

    return-object v0
.end method

.method public final bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lt4/u;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgro;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgro;

    sget-object p2, LY3/j;->a:LY3/j;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzgro;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Lc4/a;->a:Lc4/a;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzgro;->zzb:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-eq v1, v3, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgro;->zze:Ljava/lang/Object;

    check-cast v0, LB4/a;

    :try_start_0
    invoke-static {p1}, LS4/b;->E(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgro;->zza:Ljava/lang/Object;

    check-cast v1, Lkotlin/jvm/functions/Function2;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzgro;->zze:Ljava/lang/Object;

    check-cast v3, LB4/a;

    invoke-static {p1}, LS4/b;->E(Ljava/lang/Object;)V

    move-object p1, v3

    goto :goto_0

    :cond_1
    invoke-static {p1}, LS4/b;->E(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgro;->zze:Ljava/lang/Object;

    check-cast p1, Lt4/u;

    invoke-interface {p1}, Lt4/u;->d()Lb4/h;

    move-result-object p1

    invoke-static {p1}, Lt4/w;->d(Lb4/h;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgro;->zzc:Lcom/google/android/gms/internal/ads/zzgrm;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgro;->zzd:Lkotlin/jvm/functions/Function2;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgrm;->zza()LB4/a;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgro;->zze:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzgro;->zza:Ljava/lang/Object;

    iput v3, p0, Lcom/google/android/gms/internal/ads/zzgro;->zzb:I

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/zzgrp;->zzc(LB4/a;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v0, :cond_2

    :goto_0
    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgro;->zze:Ljava/lang/Object;

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzgro;->zza:Ljava/lang/Object;

    const/4 v3, 0x2

    iput v3, p0, Lcom/google/android/gms/internal/ads/zzgro;->zzb:I

    new-instance v3, Ly4/t;

    invoke-interface {p0}, Lkotlin/coroutines/Continuation;->getContext()Lb4/h;

    move-result-object v4

    invoke-direct {v3, v4, p0}, Ly4/t;-><init>(Lb4/h;Lkotlin/coroutines/Continuation;)V

    invoke-static {v3, v3, v1}, LL4/d;->F(Ly4/t;Ly4/t;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eq v1, v0, :cond_2

    move-object v0, p1

    move-object p1, v1

    :goto_1
    invoke-interface {v0, v2}, LB4/a;->b(Ljava/lang/Object;)V

    return-object p1

    :catchall_1
    move-exception v0

    move-object v5, v0

    move-object v0, p1

    move-object p1, v5

    :goto_2
    invoke-interface {v0, v2}, LB4/a;->b(Ljava/lang/Object;)V

    throw p1

    :cond_2
    return-object v0
.end method

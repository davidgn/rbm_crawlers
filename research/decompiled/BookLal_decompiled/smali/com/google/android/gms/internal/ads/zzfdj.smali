.class final synthetic Lcom/google/android/gms/internal/ads/zzfdj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic zza:LN2/o;

.field private final synthetic zzb:LN2/o;


# direct methods
.method public synthetic constructor <init>(LN2/o;LN2/o;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfdj;->zza:LN2/o;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfdj;->zzb:LN2/o;

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfdl;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfdj;->zza:LN2/o;

    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfdj;->zzb:LN2/o;

    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfdl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.class final synthetic Lcom/google/android/gms/internal/ads/zzfdg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfbn;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzfdh;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzfdh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfdg;->zza:Lcom/google/android/gms/internal/ads/zzfdh;

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfdg;->zza:Lcom/google/android/gms/internal/ads/zzfdh;

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfdh;->zzc(Lorg/json/JSONObject;)V

    return-void
.end method

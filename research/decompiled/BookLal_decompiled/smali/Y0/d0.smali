.class public final LY0/d0;
.super Lcom/google/android/gms/location/LocationCallback;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/booklal/booklal/GetCurrentLocation;


# direct methods
.method public constructor <init>(Lcom/booklal/booklal/GetCurrentLocation;)V
    .locals 0

    iput-object p1, p0, LY0/d0;->a:Lcom/booklal/booklal/GetCurrentLocation;

    invoke-direct {p0}, Lcom/google/android/gms/location/LocationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLocationResult(Lcom/google/android/gms/location/LocationResult;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/location/LocationResult;->getLastLocation()Landroid/location/Location;

    move-result-object p1

    sget v0, Lcom/booklal/booklal/GetCurrentLocation;->q:I

    iget-object v0, p0, LY0/d0;->a:Lcom/booklal/booklal/GetCurrentLocation;

    invoke-virtual {v0, p1}, Lcom/booklal/booklal/GetCurrentLocation;->j(Landroid/location/Location;)V

    iget-object p1, v0, Lcom/booklal/booklal/GetCurrentLocation;->b:Lcom/google/android/gms/location/FusedLocationProviderClient;

    iget-object v0, v0, Lcom/booklal/booklal/GetCurrentLocation;->c:LY0/d0;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/location/FusedLocationProviderClient;->removeLocationUpdates(Lcom/google/android/gms/location/LocationCallback;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

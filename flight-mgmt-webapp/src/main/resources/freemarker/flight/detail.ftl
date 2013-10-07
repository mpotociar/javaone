<!--

    DO NOT ALTER OR REMOVE COPYRIGHT NOTICES OR THIS HEADER.

    Copyright (c) 2013 Oracle and/or its affiliates. All rights reserved.

    The contents of this file are subject to the terms of either the GNU
    General Public License Version 2 only ("GPL") or the Common Development
    and Distribution License("CDDL") (collectively, the "License").  You
    may not use this file except in compliance with the License.  You can
    obtain a copy of the License at
    http://glassfish.java.net/public/CDDL+GPL_1_1.html
    or packager/legal/LICENSE.txt.  See the License for the specific
    language governing permissions and limitations under the License.

    When distributing the software, include this License Header Notice in each
    file and include the License file at packager/legal/LICENSE.txt.

    GPL Classpath Exception:
    Oracle designates this particular file as subject to the "Classpath"
    exception as provided by Oracle in the GPL Version 2 section of the License
    file that accompanied this code.

    Modifications:
    If applicable, add the following below the License Header, with the fields
    enclosed by brackets [] replaced by your own identifying information:
    "Portions Copyright [year] [name of copyright owner]"

    Contributor(s):
    If you wish your version of this file to be governed by only the CDDL or
    only the GPL Version 2, indicate your decision by adding "[Contributor]
    elects to include this software in this distribution under the [CDDL or GPL
    Version 2] license."  If you don't indicate a single choice of license, a
    recipient has the option to distribute your version of this file under
    either the CDDL, the GPL Version 2 or to extend the choice of license to
    its licensees as provided above.  However, if you add GPL Version 2 code
    and therefore, elected the GPL Version 2 license, then the option applies
    only if the new code is made subject to such option by the copyright
    holder.

-->
<#assign aircraft = model.aircraft />
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

    <title>Flight Detail</title>

    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <header class="page-header">
                <h1>Flight ${model.id} Detailed Information</h1>
            </header>
        </div>
    </div>
    <div class="row">
        <div class="col-md-5 col-md-offset-1">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">Flight ${model.id}</h3>
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-md-4">
                            <small>Status</small>
                        </div>
                        <div class="col-md-8"><strong>${model.status}</strong></div>
                    </div>
                    <div class="row">
                        <div class="col-md-4">
                            <small>Seats</small>
                        </div>
                        <div class="col-md-8">
                            <strong>${model.availableSeats} / ${aircraft.capacity}</strong>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4">
                            <small>Aircraft</small>
                        </div>
                        <div class="col-md-8">
                            <strong>${aircraft.type.manufacturer} ${aircraft.type.model}</strong>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4">
                            <small>Aircraft status</small>
                        </div>
                        <div class="col-md-8"><strong>${aircraft.status}</strong></div>
                    </div>
                </div>
            </div>
        </div>
    <#if (model.availableSeats > 0 && model.open)>
        <div class="col-md-2">
            <form class="form-inline"
                  role="form" action="/api/flights/${model.id}/new-booking"
                  method="POST">
                <button type="submit"
                        class="btn btn-default btn-sm">Book a Seat
                </button>
            </form>
        </div>
    </#if>
    </div>
    <div class="row">
        <div class="col-md-12">
            <footer class="page-footer">
                <ul class="nav nav-pills">
                    <li><a href="/api/flights">All Flights</a></li>
                    <li><a href="/api/aircrafts">All Aircrafts</a></li>
                </ul>
            </footer>
        </div>
    </div>
</div>
<script src="/js/bootstrap.min.js"></script>
</body>
</html>

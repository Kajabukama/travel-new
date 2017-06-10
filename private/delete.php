<?php
	require_once 'core/functions.php';

	if (isset($_SESSION['uid'])) {

		if (isset($_GET['action'])) {

			$action = $_GET['action'];

			switch ($action) {

				case 'delete-account':
					$userid = $_GET['userid'];
					if (delete('users',$userid)) {
						header('Location:view-accounts.php');
					}
					break;

				case 'delete-category':
					$catid = $_GET['catid'];
					if (delete('category',$catid)) {
						header('Location:view-categories.php');
					}
					break;

				case 'delete-package':
					$pid = $_GET['pid'];
					if (delete('package',$pid)) {
						header('Location:view-packages.php');
					}
					break;

				case 'delete-subcategory':
					$subcatid = $_GET['subcatid'];
					if (delete('subcategory',$subcatid)) {
						header('Location:view-subcategories.php');
					}
					break;

				case 'delete-enquiry':
					$mid = $_GET['mid'];
					if (delete('contactus',$mid)) {
						header('Location:view-enquiries.php');
					}
					break;

				case 'send-sms':
					$mid = $_GET['mid'];
					$contact =  findById("contactus", $mid);

					$sms  = "Hello ".$contact['Name'].", thank you for contacting My Travel, we will shortly get back to you";
                $to = prepare($contact['Phno']);

               try {

                  $client->messages->create($to,array('from'=> $from, 'body'=> $sms));
                  Header('Location:view-enquiries.php');

	            }catch(Exception $e){
	               echo 'Message: ' .$e->getMessage();
	            }
					
					break;
						
				default:
					header('Location:.');
					break;
			}

		}
		

	} else {
		header('Location:../');
	}





?>